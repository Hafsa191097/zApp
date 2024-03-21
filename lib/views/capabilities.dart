import 'package:flutter/material.dart';
import 'package:z_app/common_widgets/linearbar.dart';
import 'package:z_app/common_widgets/primary_btn.dart';
import 'package:z_app/common_widgets/profile_header.dart';
import 'package:z_app/common_widgets/profile_lable.dart';
import 'package:z_app/common_widgets/textformfield_profile.dart';

class CapabilitiesPage extends StatefulWidget {
  const CapabilitiesPage({super.key});
  static String route = '/capabilities';
  @override
  State<CapabilitiesPage> createState() => _CapabilitiesPageState();
}

class _CapabilitiesPageState extends State<CapabilitiesPage> {
  int _currentPage = 3;
  final int totalpages = 4;
  String? selectedValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LinearBar(
            totalPages: totalpages,
            currentPage: _currentPage,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Profile_Header(
                header: 'Capabilities, case studies, and specific projects',
                description:
                    'You can easily upload your capabilities, case studies, and specific projects via file upload or link.',
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LableTextProfile(
                      labaltext: 'Add Link',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormFieldProfile(
                      hint: 'Paste your link here...',
                      maxlines: 1,
                      postfixIcon: Icons.attach_file,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LableTextProfile(
                      labaltext: 'Upload File',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormFieldProfile(
                      hint: 'Upload your file',
                      maxlines: 1,
                      postfixIcon: Icons.drive_folder_upload_outlined,
                    ),
                    
                  ],
                ),
              ),
              SizedBox(
                height: 340,
              ),
              Primary_Button(
                text: 'Continue',
                route: '/success',
              )
            ],
          ),
        ],
      ),
    );
  }
}
