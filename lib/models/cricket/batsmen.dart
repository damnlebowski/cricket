import 'package:json_annotation/json_annotation.dart';

part 'batsmen.g.dart';

@JsonSerializable()
class Batsmen {
  int? batsmanId;
  int? ballsFaced;
  int? runs;
  int? fours;
  int? sixes;

  Batsmen({this.batsmanId, this.ballsFaced, this.runs, this.fours, this.sixes});

  factory Batsmen.fromJson(Map<String, dynamic> json) =>
      _$BatsmenFromJson(json);

  Map<String, dynamic> toJson() => _$BatsmenToJson(this);
}
