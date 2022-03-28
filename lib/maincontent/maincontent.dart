import 'package:flutter/material.dart';
import 'mainbanner.dart';
import 'ListIcon_color.dart';
import 'itemSp.dart';

class Main_Content extends StatelessWidget{
  const Main_Content({Key?key}) :super(key: key);

  @override
  Widget build (BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children:const[
          MainBanner(),
          ListIconColor(),
          ItemSp(),
           ItemSp(),
        ],
      ),
    );
  }
}