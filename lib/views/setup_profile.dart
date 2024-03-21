import 'package:flutter/material.dart';
import 'package:z_app/common_widgets/linearbar.dart';
import 'package:z_app/common_widgets/linearbar_indicator.dart';

class SetupProfile extends StatefulWidget {
  const SetupProfile({super.key});
  static String route = '/profilepage';

  @override
  State<SetupProfile> createState() => _SetupProfileState();
}

class _SetupProfileState extends State<SetupProfile> {
  int _currentPage = 0;
  final int totalpages=4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LinearBar(totalPages: totalpages, currentPage: _currentPage,),
          buildPage(pageNumber: _currentPage)
        ],
      ),
    );
  }
}
