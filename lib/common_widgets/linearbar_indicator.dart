import 'package:flutter/material.dart';
import 'package:z_app/views/minimum_investment.dart';
import 'package:z_app/views/specialized_areas.dart';
import 'package:z_app/views/welcom_profile_page.dart';

class buildPageIndicator extends StatelessWidget {
  const buildPageIndicator(
      {super.key,
      required this.pageNumber,
      required this.currentPage,
      this.totalpages});
  final int pageNumber;
  final int currentPage;
  final int? totalpages;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 5,
      decoration: BoxDecoration(
        color: pageNumber == currentPage ? null : Colors.grey,
        gradient: pageNumber == currentPage
            ? const LinearGradient(
                tileMode: TileMode.clamp,
                colors: [Colors.black, Colors.grey],
                stops: [0.5, 0.5],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
            : null,
      ),
    );
  }
}

class buildPage extends StatelessWidget {
  const buildPage({super.key, required this.pageNumber});
  final int pageNumber;
  @override
  Widget build(BuildContext context) {
    switch (pageNumber) {
      case 0:
        
        return WelcomePage_Profile_Setup();
      case 1:
        
        return Specialized_Areas();
      case 2:
        return Minimum_Investment();
      // case 3:
      //   return FourthPage();
      default:
        return Container();
    }
  }
}

