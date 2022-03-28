import 'package:flutter/material.dart';
import 'appbar.dart';
import 'bannerSlide.dart';
import 'tabslide.dart';
import 'bottombar.dart';

class SlideOut extends StatelessWidget {
  const SlideOut({Key?key}):super(key: key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarDisplay(),
      body: Column(
        children: [
          Expanded(child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: const[
                BannerSlide(),
                RowContent(),
              ],
            ),
          ),
          
        ),),
        const BottomNavBar(),
        ],
      )
    
    );
  }
}
class RowContent extends StatelessWidget {
  const RowContent({Key?key}):super(key: key);

  @override
  Widget build (BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
              Text('Black Classy Shoes',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              Text('\$11',style: TextStyle(color:Colors.orange,fontWeight: FontWeight.bold,fontSize: 20,) ),
            ],
          ),
                const SizedBox(height: 10,),
                Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange[400],),
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        Text('3.0',style: TextStyle(color: Colors.white,fontSize: 20,),),
                        SizedBox(width: 10,),
                        Icon(Icons.star,color: Colors.white,size: 15,)
                      ],
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Text('6 Reviewer',style: TextStyle(color: Colors.black45,fontSize: 20),),
                ],
              ),
              const Text('\$15',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.black45,fontSize: 16),)
            ],
          ),  
              ],
            ),
          ),
          const TabSlide(),
        ],
      ),
    );
  }
}
