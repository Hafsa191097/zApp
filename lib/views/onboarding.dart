import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:z_app/constents/const.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              
              CustomPaint(
                size: Size(430,430), 
                painter: CurvedPainter(),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(primary_color)
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: const Text('Skip',style: TextStyle(color: Colors.white,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              width: 366,
              height: 220,
              child: Column(
                children: [
                  Text('Your Adventure Starts Here',style: TextStyle(color: primary_color,fontSize: 32,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  SizedBox(height: 15,),
                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',textAlign: TextAlign.center,style: TextStyle(color: text_color,fontSize: 18,fontWeight: FontWeight.normal,),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = grey_color
      ..strokeWidth = 1;

    var path = Path();
    final double circleRadius = size.width / 2;
    path.addOval(
      Rect.fromCircle(center: Offset(size.width / 2, size.height - circleRadius), radius: circleRadius),
    );

    path.moveTo(0, size.height - circleRadius); 
    path.lineTo(0, 0); 
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - circleRadius); 

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}