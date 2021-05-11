import 'package:bloc/bloc.dart';

import 'package:sweaterz/bloc/state/profile_state.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/model/user/user.dart';
import 'package:sweaterz/repository/user_repository.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UserRepository repository;

  ProfileCubit({required this.repository}) : super(Empty());

  getUserProfile() async {
    try {
      final resp = await this.repository.getUserProfile();

      final user = User.fromJson(resp.data['user']);
      final followingSports = resp.data['following_sports']
          .map<Sport>((e) => Sport.fromJson(e))
          .toList();
      emit(Loaded(user: user, followingSports: followingSports));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
