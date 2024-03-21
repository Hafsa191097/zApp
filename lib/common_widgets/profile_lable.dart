import 'package:flutter/material.dart';
import 'package:z_app/constents/const.dart';

class LableTextProfile extends StatelessWidget {
  const LableTextProfile({super.key, required this.labaltext});
  final String labaltext;
  @override
  Widget build(BuildContext context) {
    return Text(
          labaltext,
          style: TextStyle(
              color: profile_text_color, fontSize: 15, fontWeight: FontWeight.w500),
          
        );
  }
}