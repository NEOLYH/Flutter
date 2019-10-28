// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yncc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Yncc _$YnccFromJson(Map<String, dynamic> json) {
  return Yncc(
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : Data.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['title'] as String);
}

Map<String, dynamic> _$YnccToJson(Yncc instance) =>
    <String, dynamic>{'data': instance.data, 'title': instance.title};

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(json['brief'] as String, json['image'] as String,
      json['title'] as String, json['type'] as String, json['url'] as String);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'brief': instance.brief,
      'image': instance.image,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url
    };
