import 'package:flutter/material.dart';
import 'package:z_app/common_widgets/linearbar.dart';
import 'package:z_app/common_widgets/profile_header.dart';

class Minimum_Investment extends StatefulWidget {
  const Minimum_Investment({super.key});
  static String route = '/min_investment';
  @override
  State<Minimum_Investment> createState() => _Minimum_InvestmentState();
}

class _Minimum_InvestmentState extends State<Minimum_Investment> {
  int _currentPage = 2;
  final int totalpages = 4;
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
          const SizedBox(height: 40),
          const Column(
            children: [
              Profile_Header(
                header: 'Minimum Investment Amounts',
                description:
                    'Please select the minimum investment amounts to engage with the company.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
