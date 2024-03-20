import 'package:flutter/material.dart';
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
          Padding(
            padding: EdgeInsets.only(left: 30, top: 65),
            child: SizedBox(
              width: 181,
              height: 100,
              child: Text(
                'Create an account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormFiledWidget(
            hint: 'Username or Email',
            icon: Icons.email,
            postfixIcon: null,
          ),

          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
            ),
            child: SizedBox(
              width: 275,
              height: 30,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
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
          SizedBox(
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
                  shape: CircleBorder(),
                  backgroundColor: primary_color,
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
   
          SizedBox(
            height: 400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Back',
                style: TextStyle(color: light_text_color),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
