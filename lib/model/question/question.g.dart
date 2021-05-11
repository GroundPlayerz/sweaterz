// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$_$_QuestionFromJson(Map<String, dynamic> json) {
  return _$_Question(
    id: json['id'] as int,
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    sport: Sport.fromJson(json['sport'] as Map<String, dynamic>),
    text: json['text'] as String,
    tags: (json['tags'] as List<dynamic>)
        .map((e) => Tag.fromJson(e as Map<String, dynamic>))
        .toList(),
    likeCount: json['like_count'] as int,
    viewCount: json['view_count'] as int,
    answerCount: json['answer_count'] as int,
    isLikeButtonPressed: json['is_like_button_pressed'] as bool,
    questionFileList: (json['question_file_list'] as List<dynamic>?)
        ?.map((e) => QuestionFile.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdTime: json['created_time'] as String,
    updatedTime: json['updated_time'] as String?,
  );
}

Map<String, dynamic> _$_$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'sport': instance.sport,
      'text': instance.text,
      'tags': instance.tags,
      'like_count': instance.likeCount,
      'view_count': instance.viewCount,
      'answer_count': instance.answerCount,
      'is_like_button_pressed': instance.isLikeButtonPressed,
      'question_file_list': instance.questionFileList,
      'created_time': instance.createdTime,
      'updated_time': instance.updatedTime,
    };

_$_QuestionFile _$_$_QuestionFileFromJson(Map<String, dynamic> json) {
  return _$_QuestionFile(
    id: json['id'] as int,
    questionId: json['question_id'] as int,
    type: json['type'] as String,
    order: json['order'] as int,
    url: json['url'] as String,
    size: (json['size'] as num).toDouble(),
    length: (json['length'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_QuestionFileToJson(_$_QuestionFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question_id': instance.questionId,
      'type': instance.type,
      'order': instance.order,
      'url': instance.url,
      'size': instance.size,
      'length': instance.length,
    };
