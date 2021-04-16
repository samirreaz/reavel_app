import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:travel_app/pages/home/place/place_page.dart';

class SwiperComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Swiper(
      onTap: (index) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlacePage(
              index: index,
            ),
          ),
        );

        print('tab ${index})');
      },
      itemCount: 10,
      itemHeight: _size.height / 1.8,
      itemWidth: double.infinity,
      containerWidth: double.infinity,
      layout: SwiperLayout.CUSTOM,
      controller: SwiperController(),
      customLayoutOption: CustomLayoutOption(
        startIndex: 0,
        stateCount: 3,
      ).addOpacity(
        [0.25, 0.5, 1.0, 0.1],
      ).addTranslate([
        new Offset(0.0, 20.0),
        new Offset(0.0, -10.0),
        new Offset(0.0, -50.0),
        new Offset(0.0, -100.0),
      ]).addScale(
        [0.75, 0.85, 1.0],
        Alignment.bottomCenter,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                'https://picsum.photos/200/300?random=$index',
                height: _size.height / 1.8,
                width: _size.width,
                fit: BoxFit.cover,
              ),
              Container(
                height: _size.height / 1.8,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                      Color(0xCC000000),
                      Color(0xCC000000),
                    ])),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 30,
                  left: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'National Park',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Istanbul, Turkey',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
