import 'package:foods_express/common/model/model_with_id.dart';
import 'package:foods_express/common/utils/data_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.g.dart';

enum RestaurantPriceRange {
  expensive,
  medium,
  cheap,
}

@JsonSerializable()
class RestaurantModel implements IModelWithId {
  @override
  final int id;
  final String uuid;
  final String name;
  @JsonKey(
    fromJson: DataUtils.pathToUrl,
  )
  final String thumbUrl;
  final List<String> tags;
  final double ratings;
  final int ratingsCount;
  final int deliveryMinTime;
  final int deliveryMaxTime;
  final int deliveryMinFee;
  final int deliveryMaxFee;

  RestaurantModel({
    required this.id,
    required this.uuid,
    required this.name,
    required this.thumbUrl,
    required this.tags,
    required this.ratings,
    required this.ratingsCount,
    required this.deliveryMinTime,
    required this.deliveryMaxTime,
    required this.deliveryMinFee,
    required this.deliveryMaxFee,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantModelToJson(this);

// factory RestaurantModel.fromJson({
//   required Map<String, dynamic> json,
// }) {
//   return RestaurantModel(
//     id: json['id'],
//     name: json['name'],
//     thumbUrl: 'http://$ip${json['thumbUrl']}',
//     tags: List<String>.from(json['tags']),
//     priceRange: RestaurantPriceRange.values.firstWhere(
//           (e) => e.name == json['priceRange'],
//     ),
//     ratings: json['ratings'],
//     ratingsCount: json['ratingsCount'],
//     deliveryTime: json['deliveryTime'],
//     deliveryFee: json['deliveryFee'],
//   );
// }
}
