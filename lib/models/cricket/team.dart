import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable()
class Team {
  @JsonKey(name: 'team_id')
  int? teamId;
  String? name;
  @JsonKey(name: 'short_name')
  String? shortName;
  @JsonKey(name: 'country_iso')
  String? countryIso;
  String? type;
  @JsonKey(name: 'logo_url')
  String? logoUrl;

  Team({
    this.teamId,
    this.name,
    this.shortName,
    this.countryIso,
    this.type,
    this.logoUrl,
  });

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}
