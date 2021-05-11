// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
class _$AnswerTearOff {
  const _$AnswerTearOff();

  _Answer call(
      {required int id,
      required User user,
      required int questionId,
      required String createdTime,
      required bool isLikeButtonPressed,
      required int likeCount,
      required int commentCount,
      List<AnswerText>? answerTextList,
      List<AnswerFile>? answerFileList,
      String? updatedTime}) {
    return _Answer(
      id: id,
      user: user,
      questionId: questionId,
      createdTime: createdTime,
      isLikeButtonPressed: isLikeButtonPressed,
      likeCount: likeCount,
      commentCount: commentCount,
      answerTextList: answerTextList,
      answerFileList: answerFileList,
      updatedTime: updatedTime,
    );
  }

  Answer fromJson(Map<String, Object> json) {
    return Answer.fromJson(json);
  }
}

/// @nodoc
const $Answer = _$AnswerTearOff();

/// @nodoc
mixin _$Answer {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  int get questionId => throw _privateConstructorUsedError;
  String get createdTime => throw _privateConstructorUsedError;
  bool get isLikeButtonPressed => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  List<AnswerText>? get answerTextList => throw _privateConstructorUsedError;
  List<AnswerFile>? get answerFileList => throw _privateConstructorUsedError;
  String? get updatedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      User user,
      int questionId,
      String createdTime,
      bool isLikeButtonPressed,
      int likeCount,
      int commentCount,
      List<AnswerText>? answerTextList,
      List<AnswerFile>? answerFileList,
      String? updatedTime});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res> implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  final Answer _value;
  // ignore: unused_field
  final $Res Function(Answer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? questionId = freezed,
    Object? createdTime = freezed,
    Object? isLikeButtonPressed = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? answerTextList = freezed,
    Object? answerFileList = freezed,
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
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      isLikeButtonPressed: isLikeButtonPressed == freezed
          ? _value.isLikeButtonPressed
          : isLikeButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      answerTextList: answerTextList == freezed
          ? _value.answerTextList
          : answerTextList // ignore: cast_nullable_to_non_nullable
              as List<AnswerText>?,
      answerFileList: answerFileList == freezed
          ? _value.answerFileList
          : answerFileList // ignore: cast_nullable_to_non_nullable
              as List<AnswerFile>?,
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
}

/// @nodoc
abstract class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) then) =
      __$AnswerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      User user,
      int questionId,
      String createdTime,
      bool isLikeButtonPressed,
      int likeCount,
      int commentCount,
      List<AnswerText>? answerTextList,
      List<AnswerFile>? answerFileList,
      String? updatedTime});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AnswerCopyWithImpl<$Res> extends _$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(_Answer _value, $Res Function(_Answer) _then)
      : super(_value, (v) => _then(v as _Answer));

  @override
  _Answer get _value => super._value as _Answer;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? questionId = freezed,
    Object? createdTime = freezed,
    Object? isLikeButtonPressed = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? answerTextList = freezed,
    Object? answerFileList = freezed,
    Object? updatedTime = freezed,
  }) {
    return _then(_Answer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      isLikeButtonPressed: isLikeButtonPressed == freezed
          ? _value.isLikeButtonPressed
          : isLikeButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      answerTextList: answerTextList == freezed
          ? _value.answerTextList
          : answerTextList // ignore: cast_nullable_to_non_nullable
              as List<AnswerText>?,
      answerFileList: answerFileList == freezed
          ? _value.answerFileList
          : answerFileList // ignore: cast_nullable_to_non_nullable
              as List<AnswerFile>?,
      updatedTime: updatedTime == freezed
          ? _value.updatedTime
          : updatedTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Answer implements _Answer {
  _$_Answer(
      {required this.id,
      required this.user,
      required this.questionId,
      required this.createdTime,
      required this.isLikeButtonPressed,
      required this.likeCount,
      required this.commentCount,
      this.answerTextList,
      this.answerFileList,
      this.updatedTime});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$_$_AnswerFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final int questionId;
  @override
  final String createdTime;
  @override
  final bool isLikeButtonPressed;
  @override
  final int likeCount;
  @override
  final int commentCount;
  @override
  final List<AnswerText>? answerTextList;
  @override
  final List<AnswerFile>? answerFileList;
  @override
  final String? updatedTime;

  @override
  String toString() {
    return 'Answer(id: $id, user: $user, questionId: $questionId, createdTime: $createdTime, isLikeButtonPressed: $isLikeButtonPressed, likeCount: $likeCount, commentCount: $commentCount, answerTextList: $answerTextList, answerFileList: $answerFileList, updatedTime: $updatedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Answer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.questionId, questionId) ||
                const DeepCollectionEquality()
                    .equals(other.questionId, questionId)) &&
            (identical(other.createdTime, createdTime) ||
                const DeepCollectionEquality()
                    .equals(other.createdTime, createdTime)) &&
            (identical(other.isLikeButtonPressed, isLikeButtonPressed) ||
                const DeepCollectionEquality()
                    .equals(other.isLikeButtonPressed, isLikeButtonPressed)) &&
            (identical(other.likeCount, likeCount) ||
                const DeepCollectionEquality()
                    .equals(other.likeCount, likeCount)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
            (identical(other.answerTextList, answerTextList) ||
                const DeepCollectionEquality()
                    .equals(other.answerTextList, answerTextList)) &&
            (identical(other.answerFileList, answerFileList) ||
                const DeepCollectionEquality()
                    .equals(other.answerFileList, answerFileList)) &&
            (identical(other.updatedTime, updatedTime) ||
                const DeepCollectionEquality()
                    .equals(other.updatedTime, updatedTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(questionId) ^
      const DeepCollectionEquality().hash(createdTime) ^
      const DeepCollectionEquality().hash(isLikeButtonPressed) ^
      const DeepCollectionEquality().hash(likeCount) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(answerTextList) ^
      const DeepCollectionEquality().hash(answerFileList) ^
      const DeepCollectionEquality().hash(updatedTime);

  @JsonKey(ignore: true)
  @override
  _$AnswerCopyWith<_Answer> get copyWith =>
      __$AnswerCopyWithImpl<_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnswerToJson(this);
  }
}

abstract class _Answer implements Answer {
  factory _Answer(
      {required int id,
      required User user,
      required int questionId,
      required String createdTime,
      required bool isLikeButtonPressed,
      required int likeCount,
      required int commentCount,
      List<AnswerText>? answerTextList,
      List<AnswerFile>? answerFileList,
      String? updatedTime}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  int get questionId => throw _privateConstructorUsedError;
  @override
  String get createdTime => throw _privateConstructorUsedError;
  @override
  bool get isLikeButtonPressed => throw _privateConstructorUsedError;
  @override
  int get likeCount => throw _privateConstructorUsedError;
  @override
  int get commentCount => throw _privateConstructorUsedError;
  @override
  List<AnswerText>? get answerTextList => throw _privateConstructorUsedError;
  @override
  List<AnswerFile>? get answerFileList => throw _privateConstructorUsedError;
  @override
  String? get updatedTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnswerCopyWith<_Answer> get copyWith => throw _privateConstructorUsedError;
}

AnswerText _$AnswerTextFromJson(Map<String, dynamic> json) {
  return _AnswerText.fromJson(json);
}

/// @nodoc
class _$AnswerTextTearOff {
  const _$AnswerTextTearOff();

  _AnswerText call(
      {required int id,
      required int answerId,
      required String text,
      required int order}) {
    return _AnswerText(
      id: id,
      answerId: answerId,
      text: text,
      order: order,
    );
  }

  AnswerText fromJson(Map<String, Object> json) {
    return AnswerText.fromJson(json);
  }
}

/// @nodoc
const $AnswerText = _$AnswerTextTearOff();

/// @nodoc
mixin _$AnswerText {
  int get id => throw _privateConstructorUsedError;
  int get answerId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerTextCopyWith<AnswerText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerTextCopyWith<$Res> {
  factory $AnswerTextCopyWith(
          AnswerText value, $Res Function(AnswerText) then) =
      _$AnswerTextCopyWithImpl<$Res>;
  $Res call({int id, int answerId, String text, int order});
}

/// @nodoc
class _$AnswerTextCopyWithImpl<$Res> implements $AnswerTextCopyWith<$Res> {
  _$AnswerTextCopyWithImpl(this._value, this._then);

  final AnswerText _value;
  // ignore: unused_field
  final $Res Function(AnswerText) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? answerId = freezed,
    Object? text = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AnswerTextCopyWith<$Res> implements $AnswerTextCopyWith<$Res> {
  factory _$AnswerTextCopyWith(
          _AnswerText value, $Res Function(_AnswerText) then) =
      __$AnswerTextCopyWithImpl<$Res>;
  @override
  $Res call({int id, int answerId, String text, int order});
}

/// @nodoc
class __$AnswerTextCopyWithImpl<$Res> extends _$AnswerTextCopyWithImpl<$Res>
    implements _$AnswerTextCopyWith<$Res> {
  __$AnswerTextCopyWithImpl(
      _AnswerText _value, $Res Function(_AnswerText) _then)
      : super(_value, (v) => _then(v as _AnswerText));

  @override
  _AnswerText get _value => super._value as _AnswerText;

  @override
  $Res call({
    Object? id = freezed,
    Object? answerId = freezed,
    Object? text = freezed,
    Object? order = freezed,
  }) {
    return _then(_AnswerText(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_AnswerText implements _AnswerText {
  _$_AnswerText(
      {required this.id,
      required this.answerId,
      required this.text,
      required this.order});

  factory _$_AnswerText.fromJson(Map<String, dynamic> json) =>
      _$_$_AnswerTextFromJson(json);

  @override
  final int id;
  @override
  final int answerId;
  @override
  final String text;
  @override
  final int order;

  @override
  String toString() {
    return 'AnswerText(id: $id, answerId: $answerId, text: $text, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnswerText &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.answerId, answerId) ||
                const DeepCollectionEquality()
                    .equals(other.answerId, answerId)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(answerId) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$AnswerTextCopyWith<_AnswerText> get copyWith =>
      __$AnswerTextCopyWithImpl<_AnswerText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnswerTextToJson(this);
  }
}

abstract class _AnswerText implements AnswerText {
  factory _AnswerText(
      {required int id,
      required int answerId,
      required String text,
      required int order}) = _$_AnswerText;

  factory _AnswerText.fromJson(Map<String, dynamic> json) =
      _$_AnswerText.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get answerId => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  int get order => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnswerTextCopyWith<_AnswerText> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerFile _$AnswerFileFromJson(Map<String, dynamic> json) {
  return _AnswerFile.fromJson(json);
}

/// @nodoc
class _$AnswerFileTearOff {
  const _$AnswerFileTearOff();

  _AnswerFile call(
      {required int id,
      required int answerId,
      required String type,
      required int order,
      required String url,
      required double size,
      double? length}) {
    return _AnswerFile(
      id: id,
      answerId: answerId,
      type: type,
      order: order,
      url: url,
      size: size,
      length: length,
    );
  }

  AnswerFile fromJson(Map<String, Object> json) {
    return AnswerFile.fromJson(json);
  }
}

/// @nodoc
const $AnswerFile = _$AnswerFileTearOff();

/// @nodoc
mixin _$AnswerFile {
  int get id => throw _privateConstructorUsedError;
  int get answerId => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; //video, image, sound, thumbnail
  int get order => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  double? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerFileCopyWith<AnswerFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerFileCopyWith<$Res> {
  factory $AnswerFileCopyWith(
          AnswerFile value, $Res Function(AnswerFile) then) =
      _$AnswerFileCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int answerId,
      String type,
      int order,
      String url,
      double size,
      double? length});
}

/// @nodoc
class _$AnswerFileCopyWithImpl<$Res> implements $AnswerFileCopyWith<$Res> {
  _$AnswerFileCopyWithImpl(this._value, this._then);

  final AnswerFile _value;
  // ignore: unused_field
  final $Res Function(AnswerFile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? answerId = freezed,
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
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
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
abstract class _$AnswerFileCopyWith<$Res> implements $AnswerFileCopyWith<$Res> {
  factory _$AnswerFileCopyWith(
          _AnswerFile value, $Res Function(_AnswerFile) then) =
      __$AnswerFileCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int answerId,
      String type,
      int order,
      String url,
      double size,
      double? length});
}

/// @nodoc
class __$AnswerFileCopyWithImpl<$Res> extends _$AnswerFileCopyWithImpl<$Res>
    implements _$AnswerFileCopyWith<$Res> {
  __$AnswerFileCopyWithImpl(
      _AnswerFile _value, $Res Function(_AnswerFile) _then)
      : super(_value, (v) => _then(v as _AnswerFile));

  @override
  _AnswerFile get _value => super._value as _AnswerFile;

  @override
  $Res call({
    Object? id = freezed,
    Object? answerId = freezed,
    Object? type = freezed,
    Object? order = freezed,
    Object? url = freezed,
    Object? size = freezed,
    Object? length = freezed,
  }) {
    return _then(_AnswerFile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
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
class _$_AnswerFile implements _AnswerFile {
  _$_AnswerFile(
      {required this.id,
      required this.answerId,
      required this.type,
      required this.order,
      required this.url,
      required this.size,
      this.length});

  factory _$_AnswerFile.fromJson(Map<String, dynamic> json) =>
      _$_$_AnswerFileFromJson(json);

  @override
  final int id;
  @override
  final int answerId;
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
    return 'AnswerFile(id: $id, answerId: $answerId, type: $type, order: $order, url: $url, size: $size, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnswerFile &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.answerId, answerId) ||
                const DeepCollectionEquality()
                    .equals(other.answerId, answerId)) &&
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
      const DeepCollectionEquality().hash(answerId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(length);

  @JsonKey(ignore: true)
  @override
  _$AnswerFileCopyWith<_AnswerFile> get copyWith =>
      __$AnswerFileCopyWithImpl<_AnswerFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnswerFileToJson(this);
  }
}

abstract class _AnswerFile implements AnswerFile {
  factory _AnswerFile(
      {required int id,
      required int answerId,
      required String type,
      required int order,
      required String url,
      required double size,
      double? length}) = _$_AnswerFile;

  factory _AnswerFile.fromJson(Map<String, dynamic> json) =
      _$_AnswerFile.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get answerId => throw _privateConstructorUsedError;
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
  _$AnswerFileCopyWith<_AnswerFile> get copyWith =>
      throw _privateConstructorUsedError;
}
