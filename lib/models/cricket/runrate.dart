import 'package:json_annotation/json_annotation.dart';

part 'runrate.g.dart';

@JsonSerializable()
class Runrate {
  int? over;
  double? runrate;

  Runrate({this.over, this.runrate});

  factory Runrate.fromJson(Map<String, dynamic> json) {
    return _$RunrateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RunrateToJson(this);
}
