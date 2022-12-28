import 'package:flutter/material.dart';

import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';

Widget image_carousel = Container(
  height: 200.0,
  child: Carousel(
    boxFit: BoxFit.cover,
    images: [
      Image.asset('images/c1.jpg'),
      Image.asset('images/c2.jpg'),
      Image.asset('images/c3.jpeg'),
      Image.asset('images/c4.jpeg'),
    ],
    dotSize: 4.0,
    dotBgColor: Colors.transparent,
    indicatorBgPadding: 2.0,
    autoplay: false,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(
      milliseconds: 1000,
    ),
  ),
);
