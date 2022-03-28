import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Chicago, Illinois, couple Valerie and Ted Rock took the cat in two years ago after they visited a local bar, where a group of drinkers were handing the animal around and making fun of him.Since being adopted by the Rocks and after getting his picture posted on the Internet, the two-year-old feline has become an international media celebrity.',
          style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Pushster',
                )),
          const SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Pincode',style: TextStyle(color: Colors.black54,fontSize: 16),),
                const SizedBox(width: 25,),
                const Text('Check Avalilabillty',style: TextStyle(color: Colors.black87,fontSize: 12),),
                const SizedBox(width: 25,),
                Column(
                  children: [
                    const Text('Delivery By',style: TextStyle(color: Colors.black54,fontSize: 16),),
                    const Text('25 June, Monday',style: TextStyle(color: Colors.black87,fontSize: 18),)
                  ],
                )
              ],
            ),
          ),const SizedBox(height: 20,),
          const Text('Colors',style: TextStyle(fontSize: 20),),
          const SizedBox(height: 20,),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 20,),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const Text('Size',style: TextStyle(fontSize: 20),),
          Row(
            children:const [
              Text('L',style: TextStyle(fontSize: 25),),
              SizedBox(width: 20,),
              Text('M',style: TextStyle(fontSize: 25),),
              SizedBox(width: 20,),
              Text('S',style: TextStyle(fontSize: 25),),
              SizedBox(width: 20,),
              Text('XL',style: TextStyle(fontSize: 25),),
            ],
          ),
        ],
      ),
    );
  }
}