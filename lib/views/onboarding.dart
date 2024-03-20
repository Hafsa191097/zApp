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
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(primary_color)
            ),
            onPressed: (){},
            child: const Text('Skip'),
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              color: Colors.grey,
              width: 366,
              height: 220,
              child: Column(
                children: [
                  Text('Your Adventure Starts Here',style: TextStyle(color: primary_color,fontSize: 32,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  SizedBox(height: 15,),
                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',textAlign: TextAlign.center,style: TextStyle(color: text_color,fontSize: 18,fontWeight: FontWeight.normal,),),
                
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}