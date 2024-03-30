import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods_express/common/const/data.dart';
import 'package:foods_express/common/dio/dio.dart';
import 'package:foods_express/common/utils/api_util.dart';
import 'package:foods_express/user/model/patch_basket_body.dart';
import 'package:foods_express/user/model/user_model.dart';
import 'package:retrofit/retrofit.dart';

import '../model/basket_item_model.dart';

part 'user_me_repository.g.dart';

final userMeRepositoryProvider = Provider<UserMeRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return UserMeRepository(dio, baseUrl: 'http://$ip/account/me');
});

@RestApi()
abstract class UserMeRepository {
  factory UserMeRepository(Dio dio, {String baseUrl}) = _UserMeRepository;

  @GET('')
  @Headers({
    'accessToken': 'true',
  })
  Future<ApiResponse<UserModel>> getMe();

  @GET('/basket')
  @Headers({
    'accessToken': 'true',
  })
  Future<List<BasketItemModel>> getBasket();

  @PATCH('/basket')
  @Headers({
    'accessToken': 'true',
  })
  Future<List<BasketItemModel>> patchBasket({
    @Body() required PatchBasketBody body,
  });
}
