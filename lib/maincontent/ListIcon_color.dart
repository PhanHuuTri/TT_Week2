import 'package:flutter/material.dart';
import 'package:week3/model/icon_Item.dart';

class ListIconColor extends StatelessWidget{
  const ListIconColor({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(list_Icon.length, (index) => card_Item(iconItem:list_Icon[index]),
        ),
      ),
    )
    );
  }
}
class card_Item extends StatelessWidget{
  const card_Item({Key?key,required this.iconItem}):super(key: key);

  final IconItem iconItem;
  @override
  Widget build (BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            CircleAvatar(
              backgroundColor: iconItem.colorIcon!,
              radius: 20,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.transparent,
                child: Image.asset(iconItem.urlIcon!),
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              iconItem.name!,
              style: TextStyle(fontWeight: FontWeight.bold,color: iconItem.colorIcon!),
            )
        ],
      ),
    );
  }
}