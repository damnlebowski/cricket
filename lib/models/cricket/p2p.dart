import 'package:json_annotation/json_annotation.dart';

part 'p2p.g.dart';

@JsonSerializable()
class P2p {
  @JsonKey(name: 'batsman_id')
  String? batsmanId;
  @JsonKey(name: 'bowler_id')
  String? bowlerId;
  String? balls;
  String? runs;
  String? run0;
  String? run1;
  String? run2;
  String? run3;
  String? run4;
  String? run5;
  String? run6;
  String? run6p;

  P2p({
    this.batsmanId,
    this.bowlerId,
    this.balls,
    this.runs,
    this.run0,
    this.run1,
    this.run2,
    this.run3,
    this.run4,
    this.run5,
    this.run6,
    this.run6p,
  });

  factory P2p.fromJson(Map<String, dynamic> json) => _$P2pFromJson(json);

  Map<String, dynamic> toJson() => _$P2pToJson(this);
}
