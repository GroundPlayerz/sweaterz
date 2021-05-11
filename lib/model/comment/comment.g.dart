// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$_$_CommentFromJson(Map<String, dynamic> json) {
  return _$_Comment(
    id: json['id'] as int,
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    answerId: json['answer_id'] as int,
    text: json['text'] as String,
    isLikeButtonPressed: json['is_like_button_pressed'] as bool,
    likeCount: json['like_count'] as int,
    createdTime: json['created_time'] as String,
    updatedTime: json['updated_time'] as String?,
  );
}

Map<String, dynamic> _$_$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'answer_id': instance.answerId,
      'text': instance.text,
      'is_like_button_pressed': instance.isLikeButtonPressed,
      'like_count': instance.likeCount,
      'created_time': instance.createdTime,
      'updated_time': instance.updatedTime,
    };
