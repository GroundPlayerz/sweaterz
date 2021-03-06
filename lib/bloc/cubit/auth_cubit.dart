import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:bloc/bloc.dart';

import 'package:sweaterz/bloc/state/auth_state.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/model/token/token.dart';
import 'package:sweaterz/model/user/user.dart';
import 'package:sweaterz/repository/auth_repository.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository repository;
  final FlutterSecureStorage secureStorage = FlutterSecureStorage();

  AuthCubit({required this.repository}) : super(SignedOut());

  signUp({required String profileName}) async {
    try {
      await this.repository.signUp(profileName: profileName);
      signInFlask();
    } catch (e) {
      if (e is DioError && e.response!.statusCode == 409) {
        emit(Error(message: 'User already exists.'));
      } else {
        emit(Error(message: e.toString()));
      }
    }
  }

  signInGoogle() async {
    try {
      await this.repository.googleSignIn();
      emit(FirebaseSignedIn());
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  signInApple() async {}

  checkIsFirebaseSignedIn() async {
    try {
      if (this.repository.isFirebaseSignedIn()) {
        emit(FirebaseSignedIn());
      } else {
        emit(SignedOut());
      }
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  signInFlask() async {
    try {
      final resp = await this.repository.flaskSignIn();

      final user = User.fromJson(resp.data['user']);
      final accessToken = Token.fromJson(resp.data['access_token']);
      secureStorage.write(key: 'access_token', value: accessToken.accessToken);
      emit(FlaskSignedIn(
        accessToken: accessToken,
        user: user,
      ));
    } catch (e) {
      if (e is DioError && e.response!.statusCode == 404) {
        emit(FlaskSignInFailed());
      } else {
        emit(Error(message: e.toString()));
      }
    }
  }

  signOut() async {
    try {
      await this.repository.signOut();
      secureStorage.delete(key: 'access_token');
      emit(SignedOut());
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
