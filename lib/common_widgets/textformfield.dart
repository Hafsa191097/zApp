import 'package:flutter/material.dart';
import 'package:z_app/constents/const.dart';

class TextFormFiledWidget extends StatelessWidget {
  const TextFormFiledWidget(
      {super.key,
      required this.hint,
      required this.icon,
      required this.postfixIcon});
  final String hint;
  final IconData icon;
  final IconData? postfixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25,left: 25,right: 25,bottom: 5),
      child: TextFormField(
        cursorColor: primary_color,
        decoration: InputDecoration(
          filled: true,
          fillColor: light_grey_color,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(25),
          hintText: hint,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                icon,
                color: primary_color,
                size: 27,
              ),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                postfixIcon,
                color: primary_color,
                size: 27,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
