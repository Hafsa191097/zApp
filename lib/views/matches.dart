import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:z_app/common_widgets/floating_actionbtn.dart';
import 'package:z_app/constents/const.dart';

class Potential_Matches extends StatelessWidget {
  const Potential_Matches({Key? key});
  static String route = '/matches';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Floating_Action_Btn(
                  icon: Icons.arrow_back_rounded,
                  action: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Potential Matches',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: primary_color,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const SizedBox(height: 40.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 115,
                    height: 170,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: grey_color,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage(
                              'assets/profile.png',
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          const Text(
                            'Jhon Doe',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Automotive',
                                style: TextStyle(
                                    fontSize: 14.0, fontStyle: FontStyle.italic),
                              ),
                              const SizedBox(width: 4.0),
                              Icon(
                                Icons.verified,
                                color: primary_color,
                                size: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}








// Container(
//               height: 250, // Adjust height as needed
//               child: GridView.builder(
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 3,
                //   crossAxisSpacing: 5.0,
                //   mainAxisSpacing: 5.0,
                // ),
//                 itemCount: 9,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Card(
//                     color: Colors.white,
//                     child: Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           const CircleAvatar(
//                             radius: 30.0,
//                             backgroundImage: AssetImage(
//                               'assets/profile.png',
//                             ),
//                           ),
//                           const SizedBox(height: 10.0),
//                           const Text(
//                             'John Doe',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16.0,
//                             ),
//                           ),
//                           const SizedBox(height: 4.0),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Text(
//                                 'Automotive',
//                                 style: TextStyle(
//                                   fontSize: 14.0,
//                                 ),
//                               ),
                              // const SizedBox(width: 5.0),
                              // Icon(
                              //   Icons.verified,
                              //   color: primary_color,
                              //   size: 14,
                              // ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),