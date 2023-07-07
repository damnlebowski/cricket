import 'package:json_annotation/json_annotation.dart';

import 'batsmen.dart';


part 'partnership.g.dart';

@JsonSerializable()
class Partnership {
  
  @JsonKey(name: 'balls_faced')
  int? ballsFaced;
  int? runs;
  int? order;
  List<Batsmen>? batsmen;

  Partnership({ this.ballsFaced, this.runs, this.order,this.batsmen});

  factory Partnership.fromJson(Map<String, dynamic> json) {
    return _$PartnershipFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartnershipToJson(this);
}
