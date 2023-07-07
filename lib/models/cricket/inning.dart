import 'package:json_annotation/json_annotation.dart';

import 'fow.dart';
import 'statistics.dart';

part 'inning.g.dart';

@JsonSerializable()
class Inning {
  @JsonKey(name: 'inning_id')
  int? inningId;
  int? number;
  String? name;
  int? runs;
  String? overs;
  int? wickets;
  int? status;
  int? result;
  @JsonKey(name: 'batting_team_id')
  int? battingTeamId;
  @JsonKey(name: 'fielding_team_id')
  int? fieldingTeamId;
  List<Fow>? fows;
  Statistics? statistics;

  Inning({
    this.inningId,
    this.number,
    this.name,
    this.runs,
    this.overs,
    this.wickets,
    this.status,
    this.result,
    this.battingTeamId,
    this.fieldingTeamId,
    this.fows,
    this.statistics,
  });

  factory Inning.fromJson(Map<String, dynamic> json) {
    return _$InningFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InningToJson(this);
}
