import 'package:json_annotation/json_annotation.dart';

part 'manhattan.g.dart';

@JsonSerializable()
class Manhattan {
  int? over;
  int? runs;

  Manhattan({this.over, this.runs});

  factory Manhattan.fromJson(Map<String, dynamic> json) {
    return _$ManhattanFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ManhattanToJson(this);
}
