import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainBanner extends StatelessWidget{
  const MainBanner({Key?key}):super(key: key);

  @override
  Widget build (BuildContext context){
    return CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: true,
        ),
        items: [
          "assets/products/banners/b1.jpg",
          "assets/products/banners/b2.jpg",
          "assets/products/banners/b3.jpg",
          "assets/products/banners/b4.jpg",
          "assets/products/banners/b5.jpg",
          "assets/products/banners/b6.jpg",
        ]
            .map(
              (e) => ClipRRect(
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      e,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      );
  }
}