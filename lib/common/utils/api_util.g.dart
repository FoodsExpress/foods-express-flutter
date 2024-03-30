// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_util.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponse<T>(
      success: json['success'] as bool,
      response: fromJsonT(json['response']),
      message: json['message'] as String,
      status: json['status'] as int,
    );

Map<String, dynamic> _$ApiResponseToJson<T>(
  ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'success': instance.success,
      'response': toJsonT(instance.response),
      'message': instance.message,
      'status': instance.status,
    };
