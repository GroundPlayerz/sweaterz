// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$_$_AnswerFromJson(Map<String, dynamic> json) {
  return _$_Answer(
    id: json['id'] as int,
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    questionId: json['question_id'] as int,
    createdTime: json['created_time'] as String,
    isLikeButtonPressed: json['is_like_button_pressed'] as bool,
    likeCount: json['like_count'] as int,
    commentCount: json['comment_count'] as int,
    answerTextList: (json['answer_text_list'] as List<dynamic>?)
        ?.map((e) => AnswerText.fromJson(e as Map<String, dynamic>))
        .toList(),
    answerFileList: (json['answer_file_list'] as List<dynamic>?)
        ?.map((e) => AnswerFile.fromJson(e as Map<String, dynamic>))
        .toList(),
    updatedTime: json['updated_time'] as String?,
  );
}

Map<String, dynamic> _$_$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'question_id': instance.questionId,
      'created_time': instance.createdTime,
      'is_like_button_pressed': instance.isLikeButtonPressed,
      'like_count': instance.likeCount,
      'comment_count': instance.commentCount,
      'answer_text_list': instance.answerTextList,
      'answer_file_list': instance.answerFileList,
      'updated_time': instance.updatedTime,
    };

_$_AnswerText _$_$_AnswerTextFromJson(Map<String, dynamic> json) {
  return _$_AnswerText(
    id: json['id'] as int,
    answerId: json['answer_id'] as int,
    text: json['text'] as String,
    order: json['order'] as int,
  );
}

Map<String, dynamic> _$_$_AnswerTextToJson(_$_AnswerText instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer_id': instance.answerId,
      'text': instance.text,
      'order': instance.order,
    };

_$_AnswerFile _$_$_AnswerFileFromJson(Map<String, dynamic> json) {
  return _$_AnswerFile(
    id: json['id'] as int,
    answerId: json['answer_id'] as int,
    type: json['type'] as String,
    order: json['order'] as int,
    url: json['url'] as String,
    size: (json['size'] as num).toDouble(),
    length: (json['length'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_AnswerFileToJson(_$_AnswerFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer_id': instance.answerId,
      'type': instance.type,
      'order': instance.order,
      'url': instance.url,
      'size': instance.size,
      'length': instance.length,
    };
