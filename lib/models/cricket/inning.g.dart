// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inning _$InningFromJson(Map<String, dynamic> json) => Inning(
      inningId: json['inning_id'] as int?,
      number: json['number'] as int?,
      name: json['name'] as String?,
      runs: json['runs'] as int?,
      overs: json['overs'] as String?,
      wickets: json['wickets'] as int?,
      status: json['status'] as int?,
      result: json['result'] as int?,
      battingTeamId: json['batting_team_id'] as int?,
      fieldingTeamId: json['fielding_team_id'] as int?,
      fows: (json['fows'] as List<dynamic>?)
          ?.map((e) => Fow.fromJson(e as Map<String, dynamic>))
          .toList(),
      statistics: json['statistics'] == null
          ? null
          : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InningToJson(Inning instance) => <String, dynamic>{
      'inning_id': instance.inningId,
      'number': instance.number,
      'name': instance.name,
      'runs': instance.runs,
      'overs': instance.overs,
      'wickets': instance.wickets,
      'status': instance.status,
      'result': instance.result,
      'batting_team_id': instance.battingTeamId,
      'fielding_team_id': instance.fieldingTeamId,
      'fows': instance.fows,
      'statistics': instance.statistics,
    };
