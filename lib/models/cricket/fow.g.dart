// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fow _$FowFromJson(Map<String, dynamic> json) => Fow(
      batsmanId: json['batsman_id'] as int?,
      runs: json['runs'] as int?,
      ballsFaced: json['balls_faced'] as int?,
      howOut: json['how_out'] as String?,
      scoreAtDismissal: json['score_at_dismissal'] as int?,
      oversAtDismissal: (json['overs_at_dismissal'] as num?)?.toDouble(),
      order: json['order'] as int?,
    );

Map<String, dynamic> _$FowToJson(Fow instance) => <String, dynamic>{
      'batsman_id': instance.batsmanId,
      'runs': instance.runs,
      'balls_faced': instance.ballsFaced,
      'how_out': instance.howOut,
      'score_at_dismissal': instance.scoreAtDismissal,
      'overs_at_dismissal': instance.oversAtDismissal,
      'order': instance.order,
    };
