import 'package:flutter/cupertino.dart';
import 'package:z_app/constents/const.dart';

class Profile_Header extends StatelessWidget {
  const Profile_Header({super.key, required this.header, required this.description});
  final String header,description;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 150,
        width: 370,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              header,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: primary_color,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: TextStyle(
                color: text_color,
                fontSize: 14,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
