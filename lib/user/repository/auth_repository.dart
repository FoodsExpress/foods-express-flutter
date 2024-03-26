import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods_express/common/const/data.dart';
import 'package:foods_express/common/dio/dio.dart';
import 'package:foods_express/common/model/login_response.dart';
import 'package:foods_express/common/model/token_response.dart';
import 'package:foods_express/common/utils/data_utils.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dio = ref.watch(dioProvider);

  return AuthRepository(baseUrl: 'http://$ip/account/auth', dio: dio);
});

class AuthRepository {
  // http://$ip/auth
  final String baseUrl;
  final Dio dio;

  AuthRepository({
    required this.baseUrl,
    required this.dio,
  });

  Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    final serialized = DataUtils.plainToBase64('$email:$password');

    final resp = await dio.post(
      '$baseUrl/api/account/auth/login',
      options: Options(
        headers: {
          'authorization': 'Basic $serialized',
        },
      ),
    );
    return LoginResponse.fromJson(
      resp.data,
    );
  }

  Future<TokenResponse> token() async {
    final resp = await dio.post(
      '$baseUrl/token',
      options: Options(
        headers: {
          'refreshToken': 'true',
        },
      ),
    );

    return TokenResponse.fromJson(resp.data);
  }
}
