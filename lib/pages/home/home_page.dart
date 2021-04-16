import 'package:flutter/material.dart';
import 'package:travel_app/pages/home/component/bottom_nav_bar.dart';
import 'package:travel_app/pages/home/component/food_list_component.dart';
import 'package:travel_app/pages/home/component/swiper_component.dart';
import 'package:travel_app/pages/home/component/tabbar_component.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SwiperComponent(),
          TabbarComponent(),
          SizedBox(height: 20),
          FoodListComponent(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
