import 'package:flutter/material.dart';
import 'package:week3/model/product.dart';
import 'slide_out/SlideOut.dart';

class ItemSp extends StatelessWidget{
  const ItemSp({Key?key}):super(key: key);

  @override
  Widget build (BuildContext context){
    return Container(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Newest Arrivals',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                Text('View all',style: TextStyle(fontSize: 15,color: Colors.black38,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(productList.length, (index) => Padding(padding: const EdgeInsets.all(10),
                  child: card_Product(product:productList[index]),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class card_Product extends StatelessWidget{
  const card_Product({Key?key,required this.product}):super(key: key);

  final Product product;
  @override
  Widget build (BuildContext context){
    return GestureDetector(
      onTap:() => {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SlideOut()))
      },
        child: Container(
        width: 120,
        child: Column(
          children: [
            Image.asset(product.urlImage!,fit: BoxFit.fill,),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.title!),
                Row(
                  children: [
                    Text(product.firstPrice!,style: TextStyle(color: Colors.black54,decoration: TextDecoration.lineThrough),),
                    Text(product.secondPrice!,style: TextStyle(color: Colors.orange[400])),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}