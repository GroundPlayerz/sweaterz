// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
class _$QuestionTearOff {
  const _$QuestionTearOff();

  _Question call(
      {required int id,
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
      String? updatedTime}) {
    return _Question(
      id: id,
      user: user,
      sport: sport,
      text: text,
      tags: tags,
      likeCount: likeCount,
      viewCount: viewCount,
      answerCount: answerCount,
      isLikeButtonPressed: isLikeButtonPressed,
      questionFileList: questionFileList,
      createdTime: createdTime,
      updatedTime: updatedTime,
    );
  }

  Question fromJson(Map<String, Object> json) {
    return Question.fromJson(json);
  }
}

/// @nodoc
const $Question = _$QuestionTearOff();

/// @nodoc
mixin _$Question {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Sport get sport => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  int get answerCount => throw _privateConstructorUsedError;
  bool get isLikeButtonPressed => throw _privateConstructorUsedError;
  List<QuestionFile>? get questionFileList =>
      throw _privateConstructorUsedError;
  String get createdTime => throw _privateConstructorUsedError;
  String? get updatedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {int id,
      User user,
      Sport sport,
      String text,
      List<Tag> tags,
      int likeCount,
      int viewCount,
      int answerCount,
      bool isLikeButtonPressed,
      List<QuestionFile>? questionFileList,
      String createdTime,
      String? updatedTime});

  $UserCopyWith<$Res> get user;
  $SportCopyWith<$Res> get sport;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? sport = freezed,
    Object? text = freezed,
    Object? tags = freezed,
    Object? likeCount = freezed,
    Object? viewCount = freezed,
    Object? answerCount = freezed,
    Object? isLikeButtonPressed = freezed,
    Object? questionFileList = freezed,
    Object? createdTime = freezed,
    Object? updatedTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      sport: sport == freezed
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      answerCount: answerCount == freezed
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLikeButtonPressed: isLikeButtonPressed == freezed
          ? _value.isLikeButtonPressed
          : isLikeButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      questionFileList: questionFileList == freezed
          ? _value.questionFileList
          : questionFileList // ignore: cast_nullable_to_non_nullable
              as List<QuestionFile>?,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      updatedTime: updatedTime == freezed
          ? _value.updatedTime
          : updatedTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $SportCopyWith<$Res> get sport {
    return $SportCopyWith<$Res>(_value.sport, (value) {
      return _then(_value.copyWith(sport: value));
    });
  }
}

/// @nodoc
abstract class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) then) =
      __$QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      User user,
      Sport sport,
      String text,
      List<Tag> tags,
      int likeCount,
      int viewCount,
      int answerCount,
      bool isLikeButtonPressed,
      List<QuestionFile>? questionFileList,
      String createdTime,
      String? updatedTime});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $SportCopyWith<$Res> get sport;
}

/// @nodoc
class __$QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(_Question _value, $Res Function(_Question) _then)
      : super(_value, (v) => _then(v as _Question));

  @override
  _Question get _value => super._value as _Question;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? sport = freezed,
    Object? text = freezed,
    Object? tags = freezed,
    Object? likeCount = freezed,
    Object? viewCount = freezed,
    Object? answerCount = freezed,
    Object? isLikeButtonPressed = freezed,
    Object? questionFileList = freezed,
    Object? createdTime = freezed,
    Object? updatedTime = freezed,
  }) {
    return _then(_Question(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      sport: sport == freezed
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      answerCount: answerCount == freezed
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLikeButtonPressed: isLikeButtonPressed == freezed
          ? _value.isLikeButtonPressed
          : isLikeButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      questionFileList: questionFileList == freezed
          ? _value.questionFileList
          : questionFileList // ignore: cast_nullable_to_non_nullable
              as List<QuestionFile>?,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      updatedTime: updatedTime == freezed
          ? _value.updatedTime
          : updatedTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Question implements _Question {
  _$_Question(
      {required this.id,
      required this.user,
      required this.sport,
      required this.text,
      required this.tags,
      required this.likeCount,
      required this.viewCount,
      required this.answerCount,
      required this.isLikeButtonPressed,
      this.questionFileList,
      required this.createdTime,
      this.updatedTime});

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final Sport sport;
  @override
  final String text;
  @override
  final List<Tag> tags;
  @override
  final int likeCount;
  @override
  final int viewCount;
  @override
  final int answerCount;
  @override
  final bool isLikeButtonPressed;
  @override
  final List<QuestionFile>? questionFileList;
  @override
  final String createdTime;
  @override
  final String? updatedTime;

  @override
  String toString() {
    return 'Question(id: $id, user: $user, sport: $sport, text: $text, tags: $tags, likeCount: $likeCount, viewCount: $viewCount, answerCount: $answerCount, isLikeButtonPressed: $isLikeButtonPressed, questionFileList: $questionFileList, createdTime: $createdTime, updatedTime: $updatedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Question &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.sport, sport) ||
                const DeepCollectionEquality().equals(other.sport, sport)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.likeCount, likeCount) ||
                const DeepCollectionEquality()
                    .equals(other.likeCount, likeCount)) &&
            (identical(other.viewCount, viewCount) ||
                const DeepCollectionEquality()
                    .equals(other.viewCount, viewCount)) &&
            (identical(other.answerCount, answerCount) ||
                const DeepCollectionEquality()
                    .equals(other.answerCount, answerCount)) &&
            (identical(other.isLikeButtonPressed, isLikeButtonPressed) ||
                const DeepCollectionEquality()
                    .equals(other.isLikeButtonPressed, isLikeButtonPressed)) &&
            (identical(other.questionFileList, questionFileList) ||
                const DeepCollectionEquality()
                    .equals(other.questionFileList, questionFileList)) &&
            (identical(other.createdTime, createdTime) ||
                const DeepCollectionEquality()
                    .equals(other.createdTime, createdTime)) &&
            (identical(other.updatedTime, updatedTime) ||
                const DeepCollectionEquality()
                    .equals(other.updatedTime, updatedTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(sport) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(likeCount) ^
      const DeepCollectionEquality().hash(viewCount) ^
      const DeepCollectionEquality().hash(answerCount) ^
      const DeepCollectionEquality().hash(isLikeButtonPressed) ^
      const DeepCollectionEquality().hash(questionFileList) ^
      const DeepCollectionEquality().hash(createdTime) ^
      const DeepCollectionEquality().hash(updatedTime);

  @JsonKey(ignore: true)
  @override
  _$QuestionCopyWith<_Question> get copyWith =>
      __$QuestionCopyWithImpl<_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionToJson(this);
  }
}

abstract class _Question implements Question {
  factory _Question(
      {required int id,
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
      String? updatedTime}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  Sport get sport => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  List<Tag> get tags => throw _privateConstructorUsedError;
  @override
  int get likeCount => throw _privateConstructorUsedError;
  @override
  int get viewCount => throw _privateConstructorUsedError;
  @override
  int get answerCount => throw _privateConstructorUsedError;
  @override
  bool get isLikeButtonPressed => throw _privateConstructorUsedError;
  @override
  List<QuestionFile>? get questionFileList =>
      throw _privateConstructorUsedError;
  @override
  String get createdTime => throw _privateConstructorUsedError;
  @override
  String? get updatedTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionCopyWith<_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionFile _$QuestionFileFromJson(Map<String, dynamic> json) {
  return _QuestionFile.fromJson(json);
}

/// @nodoc
class _$QuestionFileTearOff {
  const _$QuestionFileTearOff();

  _QuestionFile call(
      {required int id,
      required int questionId,
      required String type,
      required int order,
      required String url,
      required double size,
      double? length}) {
    return _QuestionFile(
      id: id,
      questionId: questionId,
      type: type,
      order: order,
      url: url,
      size: size,
      length: length,
    );
  }

  QuestionFile fromJson(Map<String, Object> json) {
    return QuestionFile.fromJson(json);
  }
}

/// @nodoc
const $QuestionFile = _$QuestionFileTearOff();

/// @nodoc
mixin _$QuestionFile {
  int get id => throw _privateConstructorUsedError;
  int get questionId => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; //video, image, sound, thumbnail
  int get order => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  double? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionFileCopyWith<QuestionFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionFileCopyWith<$Res> {
  factory $QuestionFileCopyWith(
          QuestionFile value, $Res Function(QuestionFile) then) =
      _$QuestionFileCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int questionId,
      String type,
      int order,
      String url,
      double size,
      double? length});
}

/// @nodoc
class _$QuestionFileCopyWithImpl<$Res> implements $QuestionFileCopyWith<$Res> {
  _$QuestionFileCopyWithImpl(this._value, this._then);

  final QuestionFile _value;
  // ignore: unused_field
  final $Res Function(QuestionFile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = freezed,
    Object? type = freezed,
    Object? order = freezed,
    Object? url = freezed,
    Object? size = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$QuestionFileCopyWith<$Res>
    implements $QuestionFileCopyWith<$Res> {
  factory _$QuestionFileCopyWith(
          _QuestionFile value, $Res Function(_QuestionFile) then) =
      __$QuestionFileCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int questionId,
      String type,
      int order,
      String url,
      double size,
      double? length});
}

/// @nodoc
class __$QuestionFileCopyWithImpl<$Res> extends _$QuestionFileCopyWithImpl<$Res>
    implements _$QuestionFileCopyWith<$Res> {
  __$QuestionFileCopyWithImpl(
      _QuestionFile _value, $Res Function(_QuestionFile) _then)
      : super(_value, (v) => _then(v as _QuestionFile));

  @override
  _QuestionFile get _value => super._value as _QuestionFile;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = freezed,
    Object? type = freezed,
    Object? order = freezed,
    Object? url = freezed,
    Object? size = freezed,
    Object? length = freezed,
  }) {
    return _then(_QuestionFile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_QuestionFile implements _QuestionFile {
  _$_QuestionFile(
      {required this.id,
      required this.questionId,
      required this.type,
      required this.order,
      required this.url,
      required this.size,
      this.length});

  factory _$_QuestionFile.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionFileFromJson(json);

  @override
  final int id;
  @override
  final int questionId;
  @override
  final String type;
  @override //video, image, sound, thumbnail
  final int order;
  @override
  final String url;
  @override
  final double size;
  @override
  final double? length;

  @override
  String toString() {
    return 'QuestionFile(id: $id, questionId: $questionId, type: $type, order: $order, url: $url, size: $size, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionFile &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.questionId, questionId) ||
                const DeepCollectionEquality()
                    .equals(other.questionId, questionId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(questionId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(length);

  @JsonKey(ignore: true)
  @override
  _$QuestionFileCopyWith<_QuestionFile> get copyWith =>
      __$QuestionFileCopyWithImpl<_QuestionFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionFileToJson(this);
  }
}

abstract class _QuestionFile implements QuestionFile {
  factory _QuestionFile(
      {required int id,
      required int questionId,
      required String type,
      required int order,
      required String url,
      required double size,
      double? length}) = _$_QuestionFile;

  factory _QuestionFile.fromJson(Map<String, dynamic> json) =
      _$_QuestionFile.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get questionId => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override //video, image, sound, thumbnail
  int get order => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  double get size => throw _privateConstructorUsedError;
  @override
  double? get length => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionFileCopyWith<_QuestionFile> get copyWith =>
      throw _privateConstructorUsedError;
}
