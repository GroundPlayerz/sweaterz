import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sweaterz/model/question/question.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/model/user/user.dart';

@immutable
abstract class ProfileState extends Equatable {}

class Empty extends ProfileState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Error extends ProfileState {
  final String message;
  final int? statusCode;

  Error({required this.message, this.statusCode});

  @override
  // TODO: implement props
  List<Object?> get props => [this.message];
}

class Loading extends ProfileState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Loaded extends ProfileState {
  final User user;
  final List<Sport> followingSports;

  Loaded({required this.user, required this.followingSports});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
