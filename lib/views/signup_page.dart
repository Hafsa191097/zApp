import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:z_app/common_widgets/back_gesturedetector.dart';
import 'package:z_app/common_widgets/header.dart';
import 'package:z_app/common_widgets/image_floatingbtn.dart';
import 'package:z_app/common_widgets/textformfield.dart';
import 'package:z_app/constents/const.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static String route = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(text: 'Create an account',),
          
          const SizedBox(
            height: 15,
          ),
          const TextFormFiledWidget(
            hint: 'Username or Email',
            icon: Icons.person_2_rounded,
            postfixIcon: null,
          ),
          const TextFormFiledWidget(
            hint: 'Password',
            icon: Icons.lock,
            postfixIcon: Icons.remove_red_eye,
          ),
          const TextFormFiledWidget(
            hint: 'Confirm Password',
            icon: Icons.lock,
            postfixIcon: Icons.remove_red_eye,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: SizedBox(
              width: 275,
              height: 30,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'By clicking the',
                        style: TextStyle(color: light_text_color)),
                    TextSpan(
                        text: ' Register',
                        style: TextStyle(color: primary_color)),
                    TextSpan(
                        text: ' button, you agree to the public offer',
                        style: TextStyle(color: light_text_color)),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  elevation: 20,
                  focusElevation: BorderSide.strokeAlignOutside,
                  shape: const CircleBorder(),
                  backgroundColor: primary_color,
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in with',
                style: TextStyle(color: light_text_color),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageFloatingActionButton(path: 'assets/google.png',),
              ImageFloatingActionButton(path: 'assets/apple.png',),
              ImageFloatingActionButton(path: 'assets/fb.png',),
              
            ],
          ),
          const SizedBox(
            height: 150,
          ),
          const Gesture_Detector_Text()
        ],
      ),
    );
  }
}
