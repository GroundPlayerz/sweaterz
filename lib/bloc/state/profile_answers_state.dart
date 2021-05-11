import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sweaterz/model/question/question.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/model/user/user.dart';

@immutable
abstract class ProfileAnswersState extends Equatable {}

class Empty extends ProfileAnswersState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Error extends ProfileAnswersState {
  final String message;
  final int? statusCode;

  Error({required this.message, this.statusCode});

  @override
  // TODO: implement props
  List<Object?> get props => [this.message];
}

class Loading extends ProfileAnswersState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Loaded extends ProfileAnswersState {
  final List<Question> answerList;

  Loaded({required this.answerList});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
