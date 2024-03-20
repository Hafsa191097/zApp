import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 65),
            child: SizedBox(
              width: 181,
              height: 100,
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.start,
              ),
            ),
          ),
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
            padding: EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/forgot_password');
                  },
                  child: Text(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                focusElevation: BorderSide.strokeAlignOutside,
                shape: const CircleBorder(),
                backgroundColor: primary_color,
                onPressed: () {},
                child: Image.asset(
                  'assets/google.png',
                  width: 25,
                  height: 25,
                ),
              ),
              FloatingActionButton(
                focusElevation: BorderSide.strokeAlignOutside,
                shape: const CircleBorder(),
                backgroundColor: primary_color,
                onPressed: () {},
                child: Image.asset(
                  'assets/apple.png',
                  width: 25,
                  height: 25,
                ),
              ),
              FloatingActionButton(
                focusElevation: BorderSide.strokeAlignOutside,
                shape: const CircleBorder(),
                backgroundColor: primary_color,
                onPressed: () {},
                child: Image.asset(
                  'assets/fb.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text(
                  'Back',
                  style: TextStyle(color: light_text_color),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
