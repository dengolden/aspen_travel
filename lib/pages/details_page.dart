import 'package:aspen_travel/models/facilities.dart';
import 'package:aspen_travel/theme.dart';
import 'package:aspen_travel/widgets/facilities_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      width: 370,
                      height: 380,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/image.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                              top: 12,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(width: 0.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 15,
                                  ),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Color(0xffB8B8B8),
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 345,
                      left: 300,
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF3F8FE),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff0038FF).withOpacity(
                                0.2), // Set the shadow color // Set the spread radius
                            blurRadius: 19, // Set the blur radius
                            offset: Offset(0, 3), // Set the shadow offset
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 35,
                        color: Color(
                          0xffEC5655,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Coeurdes Alpes',
                        style: titleTextStyle.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Show map',
                        style: interBoldTextStyle.copyWith(
                            color: blueColor, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/star_icon.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '4.5 (355 Reviews)',
                        style: interRegularTextStyle.copyWith(
                          color: ratingColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Aspen is as close as one can get to a storybook\nalpine town in America. The choose-your-own-\nadventure possibilities—skiing, hiking, dining\nshopping and ....',
                    style: interRegularTextStyle.copyWith(
                      color: secondaryBlackColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Read more',
                        style: interBoldTextStyle.copyWith(
                          color: blueColor,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Transform.rotate(
                        angle: 270 * 3.14 / 180,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 14,
                          color: blueColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Facilities',
                    style: titleTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FacilitiesItem(
                        Facilities(
                          id: 1,
                          imageUrl: 'assets/heater_icon.png',
                          facility: '1 Heater',
                        ),
                      ),
                      FacilitiesItem(
                        Facilities(
                          id: 2,
                          imageUrl: 'assets/dinner_icon.png',
                          facility: 'Dinner',
                        ),
                      ),
                      FacilitiesItem(
                        Facilities(
                          id: 3,
                          imageUrl: 'assets/tub_icon.png',
                          facility: '1 Tub',
                        ),
                      ),
                      FacilitiesItem(
                        Facilities(
                          id: 4,
                          imageUrl: 'assets/pool_icon.png',
                          facility: 'Pool',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: GoogleFonts.inter(
                              color: primaryBlackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '\$199',
                            style: montserratBoldTextStyle.copyWith(
                              color: Color(0xff2DD7A4),
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 223,
                        height: 54,
                        decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Book Now',
                                style: interBoldTextStyle.copyWith(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/arrow_right.png',
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
