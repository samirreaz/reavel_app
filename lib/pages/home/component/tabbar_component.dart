import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/home/component/tabber_item_compoenent.dart';

class TabbarComponent extends StatelessWidget {
  final itemList = [
    {
      'label': 'Restaurants',
      'icon': CupertinoIcons.home,
      'active': true,
    },
    {
      'label': 'Tickets',
      'icon': CupertinoIcons.ticket,
      'active': false,
    },
    {
      'label': 'Resta',
      'icon': CupertinoIcons.book,
      'active': false,
    },
    {
      'label': 'Restaurants',
      'icon': CupertinoIcons.home,
      'active': false,
    },
    {
      'label': 'Tickets',
      'icon': CupertinoIcons.ticket,
      'active': false,
    },
    {
      'label': 'Resta',
      'icon': CupertinoIcons.book,
      'active': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      height: 50,
      child: ListView(
        shrinkWrap: true,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: itemList
            .map((tabItem) => TabbarItemCommponent(
                  item: tabItem,
                ))
            .toList(),
      ),
    );
  }
}
