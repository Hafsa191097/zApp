import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:z_app/common_widgets/back_gesturedetector.dart';
import 'package:z_app/common_widgets/floating_actionbtn.dart';
import 'package:z_app/common_widgets/header.dart';
import 'package:z_app/common_widgets/textformfield.dart';
import 'package:z_app/constents/const.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  static String route = '/forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(text: 'Forgot Password?'),
          const SizedBox(
            height: 15,
          ),
          const TextFormFiledWidget(
            hint: 'Username or Email',
            icon: Icons.email,
            postfixIcon: null,
          ),

          const SizedBox(
            height: 25,
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
                    const TextSpan(
                        text: '*',
                        style: TextStyle(color: Colors.red)),
                    TextSpan(
                        text: ' We will send you a message to set or reset your new password',
                        style: TextStyle(color: light_text_color)),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Floating_Action_Btn(icon: Icons.arrow_forward, action: () {
            Navigator.pushNamed(context, '/profilepage');
          },),
   
          const SizedBox(
            height: 400,
          ),
          Gesture_Detector_Text(),
        ],
      ),
    );
  }
}
