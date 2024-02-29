import 'package:aspen_travel/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationRow extends StatelessWidget {
  final String currentPage;

  NavigationRow({required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildNavItem('Location', currentPage == 'location'),
                buildNavItem('Hotels', currentPage == 'hotels'),
                buildNavItem('Food', currentPage == 'food'),
                buildNavItem('Adventure', currentPage == 'adventure'),
                buildNavItem('Adventure', currentPage == 'adventure'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(String title, bool isSelected) {
    return Container(
      width: 90,
      height: 40,
      decoration: BoxDecoration(
        color: isSelected ? Color.fromARGB(30, 168, 204, 240) : null,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.inter(
            color: isSelected ? blueColor : greyColor,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
