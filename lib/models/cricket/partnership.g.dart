// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partnership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Partnership _$PartnershipFromJson(Map<String, dynamic> json) => Partnership(
      ballsFaced: json['balls_faced'] as int?,
      runs: json['runs'] as int?,
      order: json['order'] as int?,
      batsmen: (json['batsmen'] as List<dynamic>?)
          ?.map((e) => Batsmen.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PartnershipToJson(Partnership instance) =>
    <String, dynamic>{
      'balls_faced': instance.ballsFaced,
      'runs': instance.runs,
      'order': instance.order,
      'batsmen': instance.batsmen,
    };
