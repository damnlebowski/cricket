import 'package:json_annotation/json_annotation.dart';

import 'extra.dart';
import 'manhattan.dart';
import 'p2p.dart';
import 'partnership.dart';
import 'runrate.dart';
import 'runtype.dart';
import 'wicket.dart';
import 'worm.dart';

part 'statistics.g.dart';

@JsonSerializable()
class Statistics {
  List<Manhattan>? manhattan;
  List<Worm>? worm;
  List<Runrate>? runrates;
  List<Partnership>? partnership;
  List<Runtype>? runtypes;
  List<Wicket>? wickets;
  List<P2p>? p2p;
  List<Extra>? extras;

  Statistics({
    this.manhattan,
    this.worm,
    this.runrates,
    this.partnership,
    this.runtypes,
    this.wickets,
    this.p2p,
    this.extras,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) {
    return _$StatisticsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StatisticsToJson(this);
}
