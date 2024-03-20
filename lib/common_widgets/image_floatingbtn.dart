import 'package:flutter/material.dart';
import 'package:z_app/constents/const.dart';

class ImageFloatingActionButton extends StatelessWidget {
  const ImageFloatingActionButton({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      focusElevation: BorderSide.strokeAlignOutside,
      shape: const CircleBorder(),
      backgroundColor: primary_color,
      onPressed: () {},
      child: Image.asset(
        path,
        width: 25,
        height: 25,
      ),
    );
  }
}
