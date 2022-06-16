import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:login_ui/Widgets/Bikes.dart';

class carousel extends StatelessWidget {
  const carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Bikes(adrs: "images/img_3.png",),
              Bikes(adrs: "images/img_4.png",),
              Bikes(adrs: "images/img_5.png",),
              Bikes(adrs: "images/img_6.png",),


            ],
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          )
        ],
      ),
    );
  }
}
