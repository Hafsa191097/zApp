import 'package:flutter/material.dart';
import 'package:z_app/common_widgets/primary_btn.dart';
import 'package:z_app/constents/const.dart';

class ProfileSubmissionSuccess extends StatelessWidget {
  const ProfileSubmissionSuccess({super.key});
  static String route = '/success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset('assets/check.png',width: 160,height: 160,),
            const SizedBox(
              height: 25,
            ),
            Text(
              'We’ve successfully stored your info! Please click here to add your contact info to our list to receive invitations to events!',
              textAlign: TextAlign.center,
              style: TextStyle(color: profile_text_color, fontSize: 15),
            ),
            const SizedBox(
              height: 250,
            ),
            const Primary_Button(
              text: 'Continue',
              route: '/search',
            )
          ],
        ),
      ),
    );
  }
}
