import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:z_app/common_widgets/back_gesturedetector.dart';
import 'package:z_app/common_widgets/floating_actionbtn.dart';
import 'package:z_app/common_widgets/header.dart';
import 'package:z_app/common_widgets/image_floatingbtn.dart';
import 'package:z_app/common_widgets/textformfield.dart';
import 'package:z_app/constents/const.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  static String route = '/signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(text: 'Welcome Back!',),
          
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
          const SizedBox(
            height: 10,
          ),
           Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/forgot_password');
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
           Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Floating_Action_Btn(
                  icon: Icons.arrow_forward,
                  action: () {
                    Navigator.pushNamed(context, '/profilepage');
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
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
