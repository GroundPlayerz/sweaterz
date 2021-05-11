import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/state/profile_clapped_questions_state.dart';
import 'package:sweaterz/repository/user_repository.dart';

class ProfileClappedQuestionsCubit extends Cubit<ProfileClappedQuestionsState> {
  final UserRepository repository;

  ProfileClappedQuestionsCubit({required this.repository}) : super(Empty());
}
