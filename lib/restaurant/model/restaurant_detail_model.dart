import 'package:foods_express/common/utils/data_utils.dart';
import 'package:foods_express/restaurant/model/restaurant_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_detail_model.g.dart';

@JsonSerializable()
class RestaurantDetailModel extends RestaurantModel {
  final String detail;
  final List<RestaurantProductModel> products;

  RestaurantDetailModel({
    required super.id,
    required super.uuid,
    required super.name,
    required super.thumbUrl,
    required super.tags,
    required super.ratings,
    required super.ratingsCount,
    required super.deliveryMinTime,
    required super.deliveryMaxTime,
    required super.deliveryMinFee,
    required super.deliveryMaxFee,
    required this.detail,
    required this.products,
  });

  factory RestaurantDetailModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDetailModelFromJson(json);
}

@JsonSerializable()
class RestaurantProductModel {
  final int id;
  final String uuid;
  final String name;
  @JsonKey(
    fromJson: DataUtils.pathToUrl,
  )
  final String imgUrl;
  final String detail;
  final int price;

  RestaurantProductModel({
    required this.id,
    required this.uuid,
    required this.name,
    required this.imgUrl,
    required this.detail,
    required this.price,
  });

  factory RestaurantProductModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantProductModelFromJson(json);
}
