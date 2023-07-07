// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batsmen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Batsmen _$BatsmenFromJson(Map<String, dynamic> json) => Batsmen(
      batsmanId: json['batsman_id'] as int?,
      ballsFaced: json['balls_faced'] as int?,
      runs: json['runs'] as int?,
      fours: json['fours'] as int?,
      sixes: json['sixes'] as int?,
    );

Map<String, dynamic> _$BatsmenToJson(Batsmen instance) => <String, dynamic>{
      'batsman_id': instance.batsmanId,
      'balls_faced': instance.ballsFaced,
      'runs': instance.runs,
      'fours': instance.fours,
      'sixes': instance.sixes,
    };
