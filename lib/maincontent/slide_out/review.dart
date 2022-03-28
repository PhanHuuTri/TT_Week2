import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Reviewpage extends StatelessWidget{
  const Reviewpage({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
      children:[
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[500],
            shape: BoxShape.circle,
          ),
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('3.0',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Icon(Icons.star,size: 30,),
                ],
              ),
              const Text('6 Reviews',style: TextStyle(fontSize: 30,)),
            ],
          )),
        ),
        const SizedBox(width: 20,),
        Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children:const [
            StarReview(
                percent: 0.2,
                star: 5,
                color: Colors.green,
              ),
              StarReview(
                percent: 0.18,
                star: 4,
                color: Colors.green,
              ),
              StarReview(
                percent: 0.4,
                star: 3,
                color: Colors.amber,
              ),
              StarReview(
                percent: 0.15,
                star: 2,
                color: Colors.amber,
              ),
              StarReview(
                percent: 0.15,
                star: 1,
                color: Colors.red,
              )
          ],
        )
      ] )
    );
  }
}

class StarReview extends StatelessWidget {
  final double percent;
  final int star;
  final Color color;
  const StarReview(
      {Key? key,
      required this.percent,
      required this.star,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              star.toString(),
              style: const TextStyle(
                  fontFamily: 'Pushster',
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const Icon(
              Icons.star,
              color: Colors.amber,
            )
          ],
        ),
        LinearPercentIndicator(
          width: 160,
          lineHeight: 15,
          percent: percent,

          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: color,
          backgroundColor: Colors.grey[400],
          animation: true,
          //animationDuration: 5000,
        ),
      ],
    );
  }
}