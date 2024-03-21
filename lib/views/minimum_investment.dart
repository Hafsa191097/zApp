import 'package:flutter/material.dart';
import 'package:z_app/common_widgets/linearbar.dart';
import 'package:z_app/common_widgets/primary_btn.dart';
import 'package:z_app/common_widgets/profile_header.dart';
import 'package:z_app/constents/const.dart';

class Minimum_Investment extends StatefulWidget {
  const Minimum_Investment({super.key});
  static String route = '/min_investment';
  @override
  State<Minimum_Investment> createState() => _Minimum_InvestmentState();
}

class _Minimum_InvestmentState extends State<Minimum_Investment> {
  int _currentPage = 2;
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Profile_Header(
                header: 'Minimum Investment Amounts',
                description:
                    'Please select the minimum investment amounts to engage with the company.',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    buildRadioTile('\$Under 1000', 'Under 1000'),
                    buildRadioTile('\$1000 - \$10,000', '1000 - 10,000'),
                    buildRadioTile('\$10,001 - \$50,000', '10,001 - 50,000'),
                    buildRadioTile('\$50,001 - \$200,000', '50,001 - 200,000'),
                    buildRadioTile('\$200,001 - \$500,000', '200,001 - 500,000'),
                    buildRadioTile('\$500,001 - \$1,000,000', '500,001 - 1,000,000'),
                    buildRadioTile('Over \$1,000,000', 'Over 1,000,000'),
                  ],
                ),
              ),
              const SizedBox(height: 200,),
              const Primary_Button(text: 'Continue', route: '/capabilities',)
            ],
          ),
        ],
      ),
    );
  }

  Widget buildRadioTile(String title, String value) {
    return ListTile(
      title: Text(title,style: TextStyle(fontSize: 14,color: profile_text_color),),
      onTap: () {
        setState(() {
          selectedValue = value;
        });
      },
      leading: Radio(
        value: value,
        groupValue: selectedValue,
        onChanged: (newValue) {
          setState(() {
            selectedValue = newValue.toString();
          });
        },
        activeColor: primary_color,
      ),
    );
  }
}
