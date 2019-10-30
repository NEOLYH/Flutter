// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yncc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Yncc _$YnccFromJson(Map<String, dynamic> json) {
  return Yncc(
      json['name'] as String,
      (json['images'] as List)
          ?.map((e) =>
              e == null ? null : Images.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$YnccToJson(Yncc instance) =>
    <String, dynamic>{'name': instance.name, 'images': instance.images};

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(json['brief'] as String, json['image'] as String,
      json['title'] as String, json['type'] as String, json['url'] as String);
}

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'brief': instance.brief,
      'image': instance.image,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url
    };
