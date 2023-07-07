import 'package:json_annotation/json_annotation.dart';

part 'fow.g.dart';

@JsonSerializable()
class Fow {
  @JsonKey(name: 'batsman_id')
  int? batsmanId;
  int? runs;
  @JsonKey(name: 'balls_faced')
  int? ballsFaced;
  @JsonKey(name: 'how_out')
  String? howOut;
  @JsonKey(name: 'score_at_dismissal')
  int? scoreAtDismissal;
  @JsonKey(name: 'overs_at_dismissal')
  double? oversAtDismissal;
  int? order;

  Fow({
    this.batsmanId,
    this.runs,
    this.ballsFaced,
    this.howOut,
    this.scoreAtDismissal,
    this.oversAtDismissal,
    this.order,
  });

  factory Fow.fromJson(Map<String, dynamic> json) => _$FowFromJson(json);

  Map<String, dynamic> toJson() => _$FowToJson(this);
}
