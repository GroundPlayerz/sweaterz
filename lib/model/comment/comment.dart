import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweaterz/model/user/user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Comment({
    required int id,
    required User user,
    required int answerId,
    required String text,
    required bool isLikeButtonPressed,
    required int likeCount,
    required String createdTime,
    String? updatedTime, //[nullable]
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
