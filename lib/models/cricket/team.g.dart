// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      teamId: json['team_id'] as int?,
      name: json['name'] as String?,
      shortName: json['short_name'] as String?,
      countryIso: json['country_iso'] as String?,
      type: json['type'] as String?,
      logoUrl: json['logo_url'] as String?,
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'team_id': instance.teamId,
      'name': instance.name,
      'short_name': instance.shortName,
      'country_iso': instance.countryIso,
      'type': instance.type,
      'logo_url': instance.logoUrl,
    };
