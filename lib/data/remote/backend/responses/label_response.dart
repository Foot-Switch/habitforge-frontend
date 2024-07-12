import 'package:json_annotation/json_annotation.dart';

part 'label_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LabelResponse {
  LabelResponse();

  factory LabelResponse.fromJson(Map<String, dynamic> json) => _$LabelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LabelResponseToJson(this);

  String? id;
  String name = "";
  Map<String, String> translations = {};
}
