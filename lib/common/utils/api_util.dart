import 'package:json_annotation/json_annotation.dart';

part 'api_util.g.dart';

abstract class ApiResponseBase {}

@JsonSerializable(
  genericArgumentFactories: true,
)
class ApiResponse<T> extends ApiResponseBase {
  bool success;
  T response;
  String message;
  int status;

  ApiResponse({
    required this.success,
    required this.response,
    required this.message,
    required this.status,
  });

  ApiResponse copyWith({
    bool? success,
    T? response,
    String? message,
    int? status,
  }) {
    return ApiResponse<T>(
      success: success ?? this.success,
      response: response ?? this.response,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  factory ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
