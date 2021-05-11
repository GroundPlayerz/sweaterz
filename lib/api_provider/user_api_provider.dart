import 'package:dio/dio.dart';
import 'package:sweaterz/config.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/utils/dio_logging_interceptor.dart';

class UserApiProvider {
  final Dio _dio = Dio();

  UserApiProvider() {
    _dio.options = dioOptions;
    _dio.interceptors.add(DioLoggingInterceptors(_dio));
    _dio.options.headers['requirestoken'] = true;
  }

  Future<Response> getUserProfile({int? userId}) async {
    Response response;
    if (userId != null) {
      response = await _dio.get('user/$userId/profile/');
    } else {
      response = await _dio.get('/user/profile');
    }
    return response;
  }

  Future<Response> getUserProfileQuestions({int? userId}) async {
    Response response;
    if (userId != null) {
      response = await _dio.get('user/$userId/profile/questions');
    } else {
      response = await _dio.get('/user/profile/questions');
    }
    return response;
  }

  Future<Response> getUserProfileClappedQuestions({int? userId}) async {
    Response response;
    if (userId != null) {
      response = await _dio.get('user/$userId/profile/questions/clapped');
    } else {
      response = await _dio.get('/user/profile/questions/clapped');
    }
    return response;
  }

  Future<Response> getUserProfileAnswers({int? userId}) async {
    Response response;
    if (userId != null) {
      response = await _dio.get('user/$userId/profile/answers');
    } else {
      response = await _dio.get('/user/profile/answers');
    }
    return response;
  }

  Future<Response> getUserProfileClappedAnswers({int? userId}) async {
    Response response;
    if (userId != null) {
      response = await _dio.get('user/$userId/profile/answers/clapped');
    } else {
      response = await _dio.get('/user/profile/answers/clapped');
    }
    return response;
  }

  Future<Response> getUserFollowingSports({int? userId}) async {
    Response response;
    if (userId != null) {
      response = await _dio.get('user/$userId/sports/');
    } else {
      response = await _dio.get('/user/sports');
    }
    return response;
  }

  Future<Response> followSport({required Sport sport}) async {
    var response = await _dio.post('/user/sports/${sport.id}');

    return response;
  }

  Future<Response> unfollowSport({required Sport sport}) async {
    var response = await _dio.delete('/user/sports/${sport.id}');

    return response;
  }
}
