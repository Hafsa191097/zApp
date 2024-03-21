import 'package:flutter/material.dart';
import 'package:z_app/constents/const.dart';

class Primary_Button extends StatelessWidget {
  const Primary_Button({super.key, required this.text, required this.route});
  final String text;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SizedBox(
        width: 370,
        height: 54,
        child: TextButton(
          
          style: ElevatedButton.styleFrom(
            
            backgroundColor:  primary_color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 18),
            child: Text(
              text,
              style: const TextStyle(color: Colors.black,fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
