import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:z_app/common_widgets/profile_header.dart';
import 'package:z_app/constents/const.dart';

import '../common_widgets/textformfield_profile.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  static String route = '/search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Profile_Header(
                header: 'Search Contacts',
                description:
                    'You can easily search for the contacts here by there area of specialization, name, and company name.'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Flexible(
                    child: TextFormFieldProfile(
                  hint: '',
                  maxlines: 1,
                  prefixIcon: Icons.search,
                )),
                const SizedBox(width: 10),
                FloatingActionButton(
                  elevation: 0,
                  shape: ContinuousRectangleBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      side: BorderSide(
                          style: BorderStyle.solid, color: grey_color)),
                  onPressed: () {},
                  child: Icon(
                    Icons.sort,
                    color: text_color,
                  ),
                  backgroundColor: Colors.white70,
                ),
              ],
            ),
            const SizedBox(
              height: 530,
            ),
            SizedBox(
              width: 172,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary_color,
                  padding: const EdgeInsets.all(11),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(width: 2, color: primary_color)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/matches');
                },
                child: const Text(
                  "Saerch",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
