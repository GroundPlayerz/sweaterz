import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport.freezed.dart';
part 'sport.g.dart';

@freezed
class Sport with _$Sport {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Sport({
    required int id,
    required String name,
  }) = _Sport;

  factory Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);
}
