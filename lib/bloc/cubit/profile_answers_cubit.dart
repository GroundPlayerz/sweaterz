import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/state/profile_answers_state.dart';
import 'package:sweaterz/repository/user_repository.dart';

class ProfileAnswersCubit extends Cubit<ProfileAnswersState> {
  final UserRepository repository;

  ProfileAnswersCubit({required this.repository}) : super(Empty());
}
