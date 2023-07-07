import 'package:json_annotation/json_annotation.dart';

part 'wicket.g.dart';

@JsonSerializable()
class Wicket {
  String? key;
  String? name;
  int? value;

  Wicket({this.key, this.name, this.value});

  factory Wicket.fromJson(Map<String, dynamic> json) {
    return _$WicketFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WicketToJson(this);
}
