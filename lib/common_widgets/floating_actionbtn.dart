import 'package:flutter/material.dart';
import 'package:z_app/constents/const.dart';

class Floating_Action_Btn extends StatelessWidget {
  const Floating_Action_Btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            elevation: 20,
            focusElevation: BorderSide.strokeAlignOutside,
            shape: const CircleBorder(),
            backgroundColor: primary_color,
            onPressed: () {},
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
