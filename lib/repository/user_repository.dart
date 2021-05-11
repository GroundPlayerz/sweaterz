import 'package:dio/dio.dart';
import 'package:sweaterz/api_provider/user_api_provider.dart';
import 'package:sweaterz/model/sport/sport.dart';

class UserRepository {
  final UserApiProvider userApiProvider = UserApiProvider();

  Future<Response> getUserProfile() async =>
      await userApiProvider.getUserProfile();

  Future<Response> getUserFollowingSports() async =>
      await userApiProvider.getUserFollowingSports();

  Future<Response> getUserProfileQuestions() async =>
      await userApiProvider.getUserProfileQuestions();

  Future<Response> getUserProfileClappedQuestions() async =>
      await userApiProvider.getUserProfileClappedQuestions();

  Future<Response> getUserProfileAnswers() async =>
      await userApiProvider.getUserProfileAnswers();

  Future<Response> getUserProfileClappedAnswers() async =>
      await userApiProvider.getUserProfileClappedAnswers();

  Future<Response> followSport({required Sport sport}) async =>
      await userApiProvider.followSport(sport: sport);

  Future<Response> unfollowSport({required Sport sport}) async =>
      await userApiProvider.unfollowSport(sport: sport);
}
