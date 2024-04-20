// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) =>
    RestaurantModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      thumbUrl: DataUtils.pathToUrl(json['thumbUrl'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      ratings: (json['ratings'] as num).toDouble(),
      ratingsCount: json['ratingsCount'] as int,
      deliveryMinTime: json['deliveryMinTime'] as int,
      deliveryMaxTime: json['deliveryMaxTime'] as int,
      deliveryMinFee: json['deliveryMinFee'] as int,
      deliveryMaxFee: json['deliveryMaxFee'] as int,
    );

Map<String, dynamic> _$RestaurantModelToJson(RestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'thumbUrl': instance.thumbUrl,
      'tags': instance.tags,
      'ratings': instance.ratings,
      'ratingsCount': instance.ratingsCount,
      'deliveryMinTime': instance.deliveryMinTime,
      'deliveryMaxTime': instance.deliveryMaxTime,
      'deliveryMinFee': instance.deliveryMinFee,
      'deliveryMaxFee': instance.deliveryMaxFee,
    };
