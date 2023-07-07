// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cricket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cricket _$CricketFromJson(Map<String, dynamic> json) => Cricket(
      status: json['status'] as String,
      response: Response.fromJson(json['response'] as Map<String, dynamic>),
      etag: json['etag'] as String,
      modified: json['modified'] as String,
      datetime: json['datetime'] as String,
      apiVersion: json['api_version'] as String,
    );

Map<String, dynamic> _$CricketToJson(Cricket instance) => <String, dynamic>{
      'status': instance.status,
      'response': instance.response,
      'etag': instance.etag,
      'modified': instance.modified,
      'datetime': instance.datetime,
      'api_version': instance.apiVersion,
    };
