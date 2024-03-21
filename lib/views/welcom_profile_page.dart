import 'package:flutter/material.dart';
import 'package:z_app/common_widgets/profile_header.dart';
import 'package:z_app/common_widgets/profile_lable.dart';
import 'package:z_app/common_widgets/textformfield_profile.dart';
import 'package:z_app/constents/const.dart';

class WelcomePage_Profile_Setup extends StatelessWidget {
  const WelcomePage_Profile_Setup({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Profile_Header(
              header: 'Welcome Aboard!',
              description:
                  'Thank you for sharing your contact information with me for consideration for future projects. Please fill out as much as you can, but you can come back to this link to make updates whenever you need to.',
            ),
            SizedBox(height: 18,),
            Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(140.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: image_color,
                    child: const Center(
                      child: Text(
                        'Add Profile Photo',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
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
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LableTextProfile(
                    labaltext: 'Name',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                    hint: 'Enter Your Full Name',
                    maxlines: 1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Description',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                    hint: 'Description',
                    maxlines: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Company Logo',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                    hint: 'IMAGE12462626',
                    maxlines: 1,
                    postfixIcon: Icons.image_outlined,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Company Info',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(hint: 'Company Info', maxlines: 1),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Key Challenges',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                      hint: 'Key Challenges', maxlines: 2),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Upload Case Study',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                    hint: 'Upload Case Study',
                    maxlines: 1,
                    postfixIcon: Icons.file_copy_outlined,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Add Links to Video Assets',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                      hint: 'Enter your function/title', maxlines: 1),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Business Email',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                      hint: 'Enter your business email address', maxlines: 1),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Business Phone',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                      hint: 'Enter your business phone number', maxlines: 1),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Your LinkedIn',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                      hint: 'Enter your LinkedIn', maxlines: 1),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Company Name',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                      hint: 'Enter your company name', maxlines: 1),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Company Website',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                      hint: 'Enter your company website', maxlines: 1),
                  const SizedBox(
                    height: 5,
                  ),
                  const LableTextProfile(
                    labaltext: 'Company LinkedIn',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldProfile(
                      hint: 'Enter your company LinkedIn', maxlines: 1),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 172,
                        height: 54,
                        child: ElevatedButton(
                          
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side:  BorderSide(width: 1,color: primary_color)),
                            ),
                          
                          onPressed: () {
                            Navigator.pushNamed(context, '/specialized_area');
                          },
                          child: const Text("Skip",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
                        ),
                      ),
                      SizedBox(
                        width: 172,
                        height: 54,
                        child: ElevatedButton(
                          
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primary_color,
                            padding: const EdgeInsets.all(11),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side:  BorderSide(width: 2,color: primary_color)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/reviewprofilepage');
                          },
                          child: const Text("Continue",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

