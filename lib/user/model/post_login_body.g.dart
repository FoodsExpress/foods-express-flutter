// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_login_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostLoginBody _$PostLoginBodyFromJson(Map<String, dynamic> json) =>
    PostLoginBody(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$PostLoginBodyToJson(PostLoginBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
