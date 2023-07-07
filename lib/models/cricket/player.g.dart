// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      playerId: json['player_id'] as int?,
      name: json['name'] as String?,
      shortName: json['short_name'] as String?,
      countryIso: json['country_iso'] as String?,
      logoUrl: json['logo_url'] as String?,
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'player_id': instance.playerId,
      'name': instance.name,
      'short_name': instance.shortName,
      'country_iso': instance.countryIso,
      'logo_url': instance.logoUrl,
    };
