// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statistics _$StatisticsFromJson(Map<String, dynamic> json) => Statistics(
      manhattan: (json['manhattan'] as List<dynamic>?)
          ?.map((e) => Manhattan.fromJson(e as Map<String, dynamic>))
          .toList(),
      worm: (json['worm'] as List<dynamic>?)
          ?.map((e) => Worm.fromJson(e as Map<String, dynamic>))
          .toList(),
      runrates: (json['runrates'] as List<dynamic>?)
          ?.map((e) => Runrate.fromJson(e as Map<String, dynamic>))
          .toList(),
      partnership: (json['partnership'] as List<dynamic>?)
          ?.map((e) => Partnership.fromJson(e as Map<String, dynamic>))
          .toList(),
      runtypes: (json['runtypes'] as List<dynamic>?)
          ?.map((e) => Runtype.fromJson(e as Map<String, dynamic>))
          .toList(),
      wickets: (json['wickets'] as List<dynamic>?)
          ?.map((e) => Wicket.fromJson(e as Map<String, dynamic>))
          .toList(),
      p2p: (json['p2p'] as List<dynamic>?)
          ?.map((e) => P2p.fromJson(e as Map<String, dynamic>))
          .toList(),
      extras: (json['extras'] as List<dynamic>?)
          ?.map((e) => Extra.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StatisticsToJson(Statistics instance) =>
    <String, dynamic>{
      'manhattan': instance.manhattan,
      'worm': instance.worm,
      'runrates': instance.runrates,
      'partnership': instance.partnership,
      'runtypes': instance.runtypes,
      'wickets': instance.wickets,
      'p2p': instance.p2p,
      'extras': instance.extras,
    };
