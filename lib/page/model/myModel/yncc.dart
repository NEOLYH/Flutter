import 'package:json_annotation/json_annotation.dart';

part 'yncc.g.dart';

@JsonSerializable()
class Yncc extends Object {
  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'title')
  String title;

  Yncc(
    this.data,
    this.title,
  );

  factory Yncc.fromJson(Map<String, dynamic> srcJson) =>
      _$YnccFromJson(srcJson);

  Map<String, dynamic> toJson() => _$YnccToJson(this);
}

@JsonSerializable()
class Data extends Object {
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

  Data(
    this.brief,
    this.image,
    this.title,
    this.type,
    this.url,
  );

  factory Data.fromJson(Map<String, dynamic> srcJson) =>
      _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
