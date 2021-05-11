import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweaterz/model/question/question.dart';
import 'package:sweaterz/model/user/user.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Answer({
    required int id,
    required User user,
    required int questionId,
    required String createdTime,
    required bool isLikeButtonPressed,
    required int likeCount,
    required int commentCount,
    List<AnswerText>? answerTextList,
    List<AnswerFile>? answerFileList,
    String? updatedTime, //[nullable]
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

@freezed
class AnswerText with _$AnswerText {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory AnswerText({
    required int id,
    required int answerId,
    required String text,
    required int order,
  }) = _AnswerText;
  factory AnswerText.fromJson(Map<String, dynamic> json) =>
      _$AnswerTextFromJson(json);
}

@freezed
class AnswerFile with _$AnswerFile {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory AnswerFile({
    required int id,
    required int answerId,
    required String type, //video, image, sound, thumbnail
    required int order,
    required String url,
    required double size,
    double? length,
  }) = _AnswerFile;

  factory AnswerFile.fromJson(Map<String, dynamic> json) =>
      _$AnswerFileFromJson(json);
}
