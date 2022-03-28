import 'package:flutter/material.dart';

class IconItem{
  final String? name, urlIcon;
  final Color? colorIcon;

  IconItem({this.name,this.urlIcon,this.colorIcon});
}

List<IconItem> list_Icon =[
  IconItem(
    name: 'Men',
    urlIcon: 'assets/icons/ic_men.png',
    colorIcon: Colors.red
  ),
  IconItem(
    name: 'Women',
    urlIcon: 'assets/icons/ic_woman.png',
    colorIcon: Colors.blue
  ),
  IconItem(
    name: 'Baby & Kids',
    urlIcon: 'assets/icons/ic_kids.png',
    colorIcon: Colors.yellow
  ),
  IconItem(
    name: 'Bags',
    urlIcon: 'assets/icons/ic_bag.png',
    colorIcon: Colors.blue[900]
  ),
  IconItem(
    name: 'Decor',
    urlIcon: 'assets/icons/ic_decor.png',
    colorIcon: Colors.brown
  ),
  IconItem(
    name: 'Sport',
    urlIcon: 'assets/icons/ic_sports.png',
    colorIcon: Colors.cyan
  ),
];