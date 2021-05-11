import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/state/profile_questions_state.dart';
import 'package:sweaterz/repository/user_repository.dart';

class ProfileQuestionsCubit extends Cubit<ProfileQuestionsState> {
  final UserRepository repository;

  ProfileQuestionsCubit({required this.repository}) : super(Empty());

  getUserProfile() {}
}
