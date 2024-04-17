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
      deliveryTimeFrom: json['deliveryTimeFrom'] as int,
      deliveryTimeTo: json['deliveryTimeTo'] as int,
      deliveryFeeFrom: json['deliveryFeeFrom'] as int,
      deliveryFeeTo: json['deliveryFeeTo'] as int,
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
      'deliveryTimeFrom': instance.deliveryTimeFrom,
      'deliveryTimeTo': instance.deliveryTimeTo,
      'deliveryFeeFrom': instance.deliveryFeeFrom,
      'deliveryFeeTo': instance.deliveryFeeTo,
    };
