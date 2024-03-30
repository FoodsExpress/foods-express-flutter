import 'package:json_annotation/json_annotation.dart';

part 'post_login_body.g.dart';

@JsonSerializable()
class PostLoginBody {
  final String email;
  final String password;

  PostLoginBody({
    required this.email,
    required this.password,
  });

  factory PostLoginBody.fromJson(Map<String, dynamic> json) =>
      _$PostLoginBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PostLoginBodyToJson(this);
}
