import 'package:json_annotation/json_annotation.dart';

part 'worm.g.dart';

@JsonSerializable()
class Worm {
  int? over;
  int? runs;

  Worm({this.over, this.runs});

  factory Worm.fromJson(Map<String, dynamic> json) => _$WormFromJson(json);

  Map<String, dynamic> toJson() => _$WormToJson(this);
}
