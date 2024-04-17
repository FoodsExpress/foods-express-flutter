// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantDetailModel _$RestaurantDetailModelFromJson(
        Map<String, dynamic> json) =>
    RestaurantDetailModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      thumbUrl: DataUtils.pathToUrl(json['thumbUrl'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      ratings: (json['ratings'] as num).toDouble(),
      ratingsCount: json['ratingsCount'] as int,
      deliveryTimeFrom: json['deliveryTimeFrom'] as int,
      deliveryTimeTo: json['deliveryTimeTo'] as int,
      deliveryFeeFrom: json['deliveryFeeFrom'] as int,
      deliveryFeeTo: json['deliveryFeeTo'] as int,
      detail: json['detail'] as String,
      products: (json['products'] as List<dynamic>)
          .map(
              (e) => RestaurantProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantDetailModelToJson(
        RestaurantDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'thumbUrl': instance.thumbUrl,
      'tags': instance.tags,
      'ratings': instance.ratings,
      'ratingsCount': instance.ratingsCount,
      'deliveryTimeFrom': instance.deliveryTimeFrom,
      'deliveryTimeTo': instance.deliveryTimeTo,
      'deliveryFeeFrom': instance.deliveryFeeFrom,
      'deliveryFeeTo': instance.deliveryFeeTo,
      'detail': instance.detail,
      'products': instance.products,
    };

RestaurantProductModel _$RestaurantProductModelFromJson(
        Map<String, dynamic> json) =>
    RestaurantProductModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      imgUrl: DataUtils.pathToUrl(json['imgUrl'] as String),
      detail: json['detail'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$RestaurantProductModelToJson(
        RestaurantProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'imgUrl': instance.imgUrl,
      'detail': instance.detail,
      'price': instance.price,
    };
