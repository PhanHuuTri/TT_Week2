import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class AppBarDisplay extends StatelessWidget with PreferredSizeWidget{
  const AppBarDisplay({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.favorite),
          const SizedBox(width: 10,),
          Badge(
            position: BadgePosition.topEnd(top: 0,end: 5),
            badgeContent: const Text('9',style: TextStyle(color: Colors.white,fontSize: 10),),
            child: IconButton(icon: Icon(Icons.shopping_cart),onPressed: (){},),
          )
        ],
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}