import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/state/profile_clapped_answers_state.dart';
import 'package:sweaterz/repository/user_repository.dart';

class ProfileClappedAnswersCubit extends Cubit<ProfileClappedAnswersState> {
  final UserRepository repository;

  ProfileClappedAnswersCubit({required this.repository}) : super(Empty());
}
