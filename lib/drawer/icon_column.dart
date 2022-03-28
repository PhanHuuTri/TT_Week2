import 'package:flutter/material.dart';
import 'package:week3/model/icon_Item.dart';

class Item_ic extends StatelessWidget{
  const Item_ic({Key?key}) :super(key: key);

  @override
  Widget build (BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(list_Icon.length, (index) => Text_item(
            urlIcon:list_Icon[index].urlIcon!,
            text:list_Icon[index].name!,
          ))
      ),
    );
  }
}
class Text_item extends StatelessWidget{
  const Text_item({
    Key?key,
    required this.urlIcon,
    required this.text
  }):super(key: key);
  final String urlIcon;
  final String text;
  @override
  Widget build(BuildContext context){
    return Padding(padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(urlIcon,width: 18,height: 18,),
          const SizedBox(width: 10,),
          Text(text),
        ],
      ),
    );
  }
}