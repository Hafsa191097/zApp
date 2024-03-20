import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 65),
      child: SizedBox(
        width: 181,
        height: 100,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 36, fontWeight: FontWeight.w800),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
