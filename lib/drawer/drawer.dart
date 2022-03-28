import 'package:flutter/material.dart';
import 'package:week3/model/icon_Item.dart';
import 'icon_column.dart';

class Drawer_user extends StatelessWidget{
  const Drawer_user({Key? key}):super(key: key);

  @override
  Widget build (BuildContext context){
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const user(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Row_One(),
                    Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          const Item_ic(),
                          const Divider(),
                          const Acccount()
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        ),
      )
    );
  }
}
class Row_One extends StatelessWidget{
  const Row_One({Key? key}):super(key: key);

  @override
  Widget build (BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.black38,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text('08',style: TextStyle(color: Colors.orange[400]),),
                const SizedBox(height: 5,),
                const Text('My Order',style: TextStyle(color: Colors.black87))
              ],
            )
          ),
          Expanded(
            child: Column(
              children: [
                Text('07',style: TextStyle(color: Colors.orange[400]),),
                const SizedBox(height: 5,),
                const Text('Wishlist',style: TextStyle(color: Colors.black),),
              ],
            )
          ),
        ],
      ),
    );
  }
}
class user extends StatelessWidget{
  const user({Key? key}):super(key: key);

  @override
  Widget build (BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/ic_user.png'),
          ),
          const SizedBox(height: 10,),
          const Text('Guest User',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
class Acccount extends StatelessWidget{
  const Acccount({Key?key}) :super(key: key);

  @override
  Widget build (BuildContext context){
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/icons/user.png',width: 18,height: 18,),
              SizedBox(width: 10,),
              Text('Account')
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Image.asset('assets/icons/settings.png',width: 18,height: 18,),
              SizedBox(width: 10,),
              Text('Settings')
            ],
          )
        ],
      ),
    );
  }
}
