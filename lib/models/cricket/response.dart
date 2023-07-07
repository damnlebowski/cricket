import 'package:json_annotation/json_annotation.dart';

import 'inning.dart';
import 'player.dart';
import 'team.dart';

part 'response.g.dart';

@JsonSerializable()
class Response {
  List<Inning>? innings;
  List<Team>? teams;
  List<Player>? players;

  Response({this.innings, this.teams, this.players});

  factory Response.fromJson(Map<String, dynamic> json) {
    return _$ResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}
