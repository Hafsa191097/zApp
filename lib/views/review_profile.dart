import 'package:flutter/material.dart';
import 'package:z_app/common_widgets/linearbar.dart';
import 'package:z_app/common_widgets/review_profile_data.dart';
import 'package:z_app/constents/const.dart';
import '../common_widgets/profile_header.dart';

class ReviewProfileInfo extends StatefulWidget {
  const ReviewProfileInfo({super.key});
  static String route = '/reviewprofilepage';
  @override
  State<ReviewProfileInfo> createState() => _ReviewProfileInfoState();
}

class _ReviewProfileInfoState extends State<ReviewProfileInfo> {
  int _currentPage = 0;
  final int totalpages=4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LinearBar(totalPages: totalpages, currentPage: _currentPage,),
          const Profile_Header(header: 'Review Your Information', description: 'Thank you for sharing your contact information with me for consideration for future projects. Please fill out as much as you can, but you can come back to this link to make updates whenever you need to.',),
          const SizedBox(height: 18,),
            Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(140.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: image_color,
                    child: Center(
                      child: Image.asset(
                        'assets/google.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 70,
                  left: 50,
                  child: FloatingActionButton(
                    backgroundColor: primary_color,
                    elevation: 10,
                    focusElevation: BorderSide.strokeAlignOutside,
                    shape: const CircleBorder(),
                    onPressed: () {},
                    child: const Icon(
                      Icons.edit_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ReviewProfileData(),
        ],
      ),
    );
  }
}
