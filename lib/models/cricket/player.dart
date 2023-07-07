import 'package:json_annotation/json_annotation.dart';

part 'player.g.dart';

@JsonSerializable()
class Player {
  @JsonKey(name: 'player_id')
  int? playerId;
  String? name;
  @JsonKey(name: 'short_name')
  String? shortName;
  @JsonKey(name: 'country_iso')
  String? countryIso;
  @JsonKey(name: 'logo_url')
  String? logoUrl;

  Player({
    this.playerId,
    this.name,
    this.shortName,
    this.countryIso,
    this.logoUrl,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return _$PlayerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
