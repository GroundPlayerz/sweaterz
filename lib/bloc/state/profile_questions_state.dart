import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sweaterz/model/question/question.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/model/user/user.dart';

@immutable
abstract class ProfileQuestionsState extends Equatable {}

class Empty extends ProfileQuestionsState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Error extends ProfileQuestionsState {
  final String message;
  final int? statusCode;

  Error({required this.message, this.statusCode});

  @override
  // TODO: implement props
  List<Object?> get props => [this.message];
}

class Loading extends ProfileQuestionsState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Loaded extends ProfileQuestionsState {
  final List<Question> questionList;

  Loaded({required this.questionList});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
