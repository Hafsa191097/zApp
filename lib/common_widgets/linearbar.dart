import 'package:flutter/material.dart';
import 'package:z_app/common_widgets/linearbar_indicator.dart';

class LinearBar extends StatefulWidget {
  const LinearBar({super.key, required this.totalPages, required this.currentPage});
  final int totalPages;
  final int currentPage;
  @override
  State<LinearBar> createState() => _LinearBarState();
}

class _LinearBarState extends State<LinearBar> {

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              widget.totalPages,
              (index) => buildPageIndicator(
                pageNumber: index,
                currentPage: widget.currentPage,
                totalpages: widget.totalPages,
              ),
            ),
          ),
          const SizedBox(height: 40),
          
        ],
      );
  }
}