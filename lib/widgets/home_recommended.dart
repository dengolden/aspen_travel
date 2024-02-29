import 'package:aspen_travel/models/recommended.dart';
import 'package:aspen_travel/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<Recommended> recommendedList = [
  Recommended(
    id: 1,
    name: 'Explore Aspen',
    imageUrl: 'assets/rec_1.png',
    duration: '4N/5D',
  ),
  Recommended(
    id: 2,
    name: 'Luxurious Aspen',
    imageUrl: 'assets/rec_2.png',
    duration: '2N/3D',
  ),
];

class RecommendedWidgets extends StatelessWidget {
  final Recommended recommended;
  RecommendedWidgets(this.recommended);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 174,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xffF4F4F4),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                  left: 4,
                  right: 4,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    recommended.imageUrl,
                    width: 166,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 90,
                  left: 118,
                ),
                child: Container(
                  width: 45,
                  height: 18,
                  decoration: BoxDecoration(
                    color: secondaryBlackColor,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        recommended.duration,
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 106,
                  left: 4,
                ),
                child: Text(
                  recommended.name,
                  style: GoogleFonts.inter(
                    color: primaryBlackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 126,
                  left: 4,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.trending_up,
                      size: 14,
                      color: Color(0xff84ABE4),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Hot Deal',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
