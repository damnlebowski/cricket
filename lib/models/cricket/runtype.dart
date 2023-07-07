import 'package:json_annotation/json_annotation.dart';

part 'runtype.g.dart';

@JsonSerializable()
class Runtype {
  String? key;
  String? name;
  int? value;

  Runtype({this.key, this.name, this.value});

  factory Runtype.fromJson(Map<String, dynamic> json) {
    return _$RuntypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RuntypeToJson(this);
}
