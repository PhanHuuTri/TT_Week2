import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget{
  const BottomBar({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels:false,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
          ),
          label: 'Shopping_Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
          ),
          label: 'Account',
        ),
      ],
      selectedItemColor: Colors.orange[400],
    );
  }
}