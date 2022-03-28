import 'package:flutter/material.dart';

class BannerSlide extends StatelessWidget{
  const BannerSlide({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return AspectRatio(
      aspectRatio: 1.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/products/shoes/shoe_6.jpeg',fit: BoxFit.fill,)
          
        ],
      ),
    );
  }
}