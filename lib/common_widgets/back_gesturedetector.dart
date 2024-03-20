import 'package:flutter/material.dart';

import '../constents/const.dart';

class Gesture_Detector_Text extends StatelessWidget {
  const Gesture_Detector_Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            'Back',
            style: TextStyle(color: light_text_color),
          ),
        ),
      ],
    );
  }
}
