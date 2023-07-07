import 'package:json_annotation/json_annotation.dart';

import 'response.dart';

part 'cricket.g.dart';

@JsonSerializable()
class Cricket {
  String status;
  Response response;
  String etag;
  String modified;
  String datetime;
  @JsonKey(name: 'api_version')
  String apiVersion;

  Cricket({
    required this.status,
    required this.response,
    required this.etag,
    required this.modified,
    required this.datetime,
    required this.apiVersion,
  });

  factory Cricket.fromJson(Map<String, dynamic> json) {
    return _$CricketFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CricketToJson(this);
}
