// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runrate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Runrate _$RunrateFromJson(Map<String, dynamic> json) => Runrate(
      over: json['over'] as int?,
      runrate: (json['runrate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RunrateToJson(Runrate instance) => <String, dynamic>{
      'over': instance.over,
      'runrate': instance.runrate,
    };
