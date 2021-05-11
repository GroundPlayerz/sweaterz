import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sweaterz/model/question/question.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/model/user/user.dart';

@immutable
abstract class ProfileClappedAnswersState extends Equatable {}

class Empty extends ProfileClappedAnswersState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Error extends ProfileClappedAnswersState {
  final String message;
  final int? statusCode;

  Error({required this.message, this.statusCode});

  @override
  // TODO: implement props
  List<Object?> get props => [this.message];
}

class Loading extends ProfileClappedAnswersState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Loaded extends ProfileClappedAnswersState {
  final List<Question> clappedAnswerList;

  Loaded({required this.clappedAnswerList});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
