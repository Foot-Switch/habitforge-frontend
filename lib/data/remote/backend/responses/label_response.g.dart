// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabelResponse _$LabelResponseFromJson(Map<String, dynamic> json) =>
    LabelResponse()
      ..id = json['id'] as String?
      ..name = json['name'] as String
      ..translations = Map<String, String>.from(json['translations'] as Map);

Map<String, dynamic> _$LabelResponseToJson(LabelResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'translations': instance.translations,
    };
