import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:z_app/common_widgets/linearbar_indicator.dart';
import 'package:z_app/common_widgets/primary_btn.dart';
import 'package:z_app/common_widgets/profile_header.dart';

class Specialized_Areas extends StatefulWidget {
  const Specialized_Areas({super.key});
  static String route = '/specialized_area';

  @override
  State<Specialized_Areas> createState() => _Specialized_AreasState();
}

class _Specialized_AreasState extends State<Specialized_Areas> {
  final int currentPage = 1;
  final int totalpages = 4;
  List<String> specializedAreas = [];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              totalpages,
              (index) => buildPageIndicator(
                pageNumber: index,
                currentPage: currentPage,
                totalpages: totalpages,
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Profile_Header(
                  header: 'Specialization Areas',
                  description:
                      'Please select the specialization areas of your company from below. You can select a maximum of 10 areas.',
                ),
                const SizedBox(height: 20),
                Container(
                  height: 500,
                  child: ListView.builder(
                    itemCount: specializedAreas.length + 1,
                    itemBuilder: (context, index) {
                      if (index == specializedAreas.length) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              double width_text(String text){
                                final textSpan = TextSpan(text: text, style: TextStyle(fontSize: 16.0));
                                final textPainter = TextPainter(
                                  text: textSpan,
                                  textDirection: TextDirection.ltr,
                                )..layout();
                                return textPainter.width;
                              }
                              if (specializedAreas.length < 10) {
                                specializedAreas.add('hafsa');
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Add Specialized Area'),
                                    SizedBox(height: 8),
                                    Icon(Icons.add),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              specializedAreas[index],
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                const Primary_Button(text: 'Continue', route: '/min_investment',)
              ],
            ),
          ),
        ],
      ),
    );
  }
}