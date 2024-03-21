import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:z_app/constents/const.dart';

class TextFormFieldProfile extends StatelessWidget {
  const TextFormFieldProfile({super.key, required this.hint, this.postfixIcon, required this.maxlines});

  final String hint;
  final int maxlines;
  final IconData? postfixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: primary_color,
      maxLines: maxlines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xffCECECE))
        ),
        contentPadding: const EdgeInsets.all(20),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
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
