import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:z_app/constents/const.dart';

class TextFormFieldProfile extends StatelessWidget {
  const TextFormFieldProfile({super.key, required this.hint, this.postfixIcon, required this.maxlines, this.prefixIcon});

  final String hint;
  final int maxlines;
  final IconData? postfixIcon;
  final IconData? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: primary_color,
      maxLines: maxlines,
      decoration: InputDecoration(
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:BorderSide(style: BorderStyle.solid,color: grey_color)
        ),
        
        contentPadding: const EdgeInsets.all(20),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Icon(
            prefixIcon,
            color: grey_color,
            size: 35,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(
            postfixIcon,
            color: primary_color,
            size: 27,
          ),
        ),
      ),
    );
  }
}
