import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sweaterz/model/question/question.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/model/user/user.dart';

@immutable
abstract class ProfileClappedQuestionsState extends Equatable {}

class Empty extends ProfileClappedQuestionsState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Error extends ProfileClappedQuestionsState {
  final String message;
  final int? statusCode;

  Error({required this.message, this.statusCode});

  @override
  // TODO: implement props
  List<Object?> get props => [this.message];
}

class Loading extends ProfileClappedQuestionsState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Loaded extends ProfileClappedQuestionsState {
  final List<Question> clappedQuestionList;

  Loaded({required this.clappedQuestionList});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
