import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/model/tag/tag.dart';
import 'package:sweaterz/model/user/user.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Question({
    required int id,
    required User user,
    required Sport sport,
    required String text,
    required List<Tag> tags,
    required int likeCount,
    required int viewCount,
    required int answerCount,
    required bool isLikeButtonPressed,
    List<QuestionFile>? questionFileList,
    required String createdTime,
    String? updatedTime,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class QuestionFile with _$QuestionFile {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory QuestionFile({
    required int id,
    required int questionId,
    required String type, //video, image, sound, thumbnail
    required int order,
    required String url,
    required double size,
    double? length,
  }) = _QuestionFile;

  factory QuestionFile.fromJson(Map<String, dynamic> json) =>
      _$QuestionFileFromJson(json);
}
