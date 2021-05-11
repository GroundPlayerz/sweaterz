import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sweaterz/model/sport/sport.dart';

@immutable
abstract class SportsState extends Equatable {}

class Empty extends SportsState {
  @override
  List<Object> get props => [];
}

class Loading extends SportsState {
  @override
  List<Object> get props => [];
}

class Error extends SportsState {
  final String message;

  Error({
    required this.message,
  });

  @override
  List<Object> get props => [this.message];
}

class Loaded extends SportsState {
  final List<Sport> sportsList;
  final List<Sport> userFollowingSportsList;

  Loaded({
    required this.sportsList,
    required this.userFollowingSportsList,
  });

  @override
  List<Object> get props => [
        this.sportsList,
        this.userFollowingSportsList,
      ];
}
