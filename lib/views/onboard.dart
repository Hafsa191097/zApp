import 'package:flutter/material.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:z_app/constents/const.dart';
import 'package:z_app/views/onboarding.dart';

class onboard extends StatelessWidget {
  const onboard({super.key});
  static String route = '/';
  @override
  Widget build(BuildContext context) {
    return OnBoardingAnimation(
      controller: PageController(initialPage: 1),
      pages: const [
        OnBoarding(),
        OnBoarding(),
        OnBoarding(),
      ],
      
      indicatorDotHeight: 7.0,
      indicatorDotWidth: 8.0,
      indicatorDotSpacing : 3.0,
      indicatorType: IndicatorType.expandingDots,
      indicatorPosition: IndicatorPosition.bottomCenter,
      indicatorInActiveDotColor:  grey_color,
      indicatorActiveDotColor: primary_color
    );  
  }
}