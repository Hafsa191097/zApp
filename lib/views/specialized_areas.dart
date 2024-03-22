import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:z_app/common_widgets/linearbar.dart';
import 'package:z_app/common_widgets/primary_btn.dart';
import 'package:z_app/common_widgets/profile_header.dart';
import 'package:z_app/constents/const.dart';

class Specialized_Areas extends StatefulWidget {
  const Specialized_Areas({super.key});
  static String route = '/specialized_area';

  @override
  State<Specialized_Areas> createState() => _Specialized_AreasState();
}

class _Specialized_AreasState extends State<Specialized_Areas> {
  int _currentPage = 1;
  final int totalpages = 4;
  List<bool> isSelected = List.generate(51, (index) => false);

  @override
  Widget build(BuildContext context) {
    double width=0;

    List<String> specializedAreas = [
      'Academic Research',
      'Agile Research',
      'AI Research Tools',
      'Asian Audience Profiles/Personas',
      'Advertising/Advertising Research',
      'Automotive',
      'Behavioral Science',
      'Black/African American',
      'Brand Health/Tracking Research',
      'Business-to-Business (B2B)',
      'Central Location Testing',
      'Competitive Intelligence',
      'Cultural Trends',
      'Customer Journey',
      'Consumer Segmentation',
      'Copy testing',
      'Customer Satisfaction',
      'CX/UX',
      'Data Analysis / Processing / Collection',
      'DIY Tools',
      'Donor Research',
      'Entertainment',
      'Ethnographic Research',
      'Focus Groups',
      'Food / Sensory Research',
      'Hispanic/Latino',
      'International Research',
      'Kids/Teens',
      'LGBTQ',
      'Max Diff/Conjoint Analysis',
      'Media/Communication Research',
      'Moderating',
      'Mystery Shopping/Field Audits',
      'New Profit Development',
      'Non-profit',
      'Older Generations',
      'Omnibus Studies',
      'Online Communities',
      'Panel Provider',
      'Packaging',
      'Price Optimization Research',
      'Qualitative Research',
      'Quantitative Research',
      'Sample Provider',
      'Semiotic Analysis',
      'Software/Platforms',
      'Statistical Analysis',
      'Syndicated Database/Tools',
      'Trends',
      'TURF Analysis',
      'Younger Generations',
    ];
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LinearBar(
            totalPages: totalpages,
            currentPage: _currentPage,
          ),
          Profile_Header(
            header: 'Specialization Areas',
            description:
                'Please select the specialization areas of your company from below. You can select a maximum of 10 areas.',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: StaggeredGridView.countBuilder(
                
                itemCount: specializedAreas.length,
                itemBuilder: (BuildContext context, int index) => InkWell(
                  onTap: () {
                    setState(() {
                      width = double.parse(specializedAreas[index].length.toString());
                      isSelected[index] = !isSelected[index];
                      log('${isSelected[index]}');
                      log('${double.parse(specializedAreas[index].length.toString())}');
                    });
                  },
                  child: Container(
                    width: double.parse(specializedAreas[index].length.toString()) ,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isSelected[index] ? primary_color : Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      color: isSelected[index] ? primary_color : Colors.transparent,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            specializedAreas[index],
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Icon(
                          isSelected[index] ? Icons.remove : Icons.add,
                          color: isSelected[index] ? Colors.black : null,
                        ),
                      ],
                    ),
                  ),
                ),
                crossAxisCount: 2,
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.fit(1),
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
            ),
          ),
          Primary_Button(text: 'Continue', route: '/min_investment'),
        ],
      ),
    );
  }
}
