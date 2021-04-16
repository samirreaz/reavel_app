import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodListItemComponent extends StatelessWidget {
  final int index;

  FoodListItemComponent({this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    NetworkImage('https://picsum.photos/200/300?random=$index'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(35)),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF000000),
                    Color(0x00000000),
                    Color(0x00000000),
                  ])),
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'KFC',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    '4.9',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.6,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    CupertinoIcons.star_fill,
                    color: Colors.yellow,
                    size: 17,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
