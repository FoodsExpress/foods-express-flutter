import 'package:flutter/material.dart';
import 'package:foods_express/common/component/pagination_list_view.dart';
import 'package:foods_express/restaurant/component/restaurant_card.dart';
import 'package:foods_express/restaurant/provider/restaurant_provider.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_detail_screen.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginationListView(
      provider: restaurantProvider,
      itemBuilder: <RestaurantModel>(_, index, model) {
        return GestureDetector(
          onTap: () {
            context.goNamed(
              RestaurantDetailScreen.routeName,
              pathParameters: {
                'rid': model.restaurant.id,
              },
            );
          },
          child: RestaurantCard.fromModel(
            model: model,
          ),
        );
      },
    );
  }
}
