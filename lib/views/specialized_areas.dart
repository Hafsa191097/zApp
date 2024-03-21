import 'package:flutter/material.dart';
import 'package:z_app/common_widgets/profile_header.dart';

class Specialized_Areas extends StatelessWidget {
  const Specialized_Areas({super.key});
  static String route = '/specialized_area';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Profile_Header(
              header: 'Specialization Areas',
              description:
                  'Please select the specialization areas of your company from below. You can select a maximum of 10 areas.',
            ),
            ],
          ),
        ),
      ),
    );
  }
}