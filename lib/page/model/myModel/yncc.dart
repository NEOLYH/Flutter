import 'package:json_annotation/json_annotation.dart';

part 'yncc.g.dart';

@JsonSerializable()
class Yncc extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'images')
  List<Images> images;

  Yncc(
    this.name,
    this.images,
  );

  factory Yncc.fromJson(Map<String, dynamic> srcJson) =>
      _$YnccFromJson(srcJson);

  Map<String, dynamic> toJson() => _$YnccToJson(this);
}

@JsonSerializable()
class Images extends Object {
  @JsonKey(name: 'brief')
  String brief;

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'url')
  String url;

  Images(
    this.brief,
    this.image,
    this.title,
    this.type,
    this.url,
  );

  factory Images.fromJson(Map<String, dynamic> srcJson) =>
      _$ImagesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
