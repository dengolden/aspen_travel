import 'package:aspen_travel/theme.dart';
import 'package:aspen_travel/widgets/bot_navbar_item.dart';
import 'package:aspen_travel/widgets/home_navrow.dart';
import 'package:aspen_travel/widgets/home_popular.dart';
import 'package:aspen_travel/widgets/home_recommended.dart';
import 'package:aspen_travel/widgets/home_searchbar.dart';
import 'package:aspen_travel/widgets/home_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/gradient_shape.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: edge,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: edge,
                          ),
                          child: HomePageHeader(),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: edge,
                          ),
                          child: HomeSearchBar(),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        NavigationRow(
                          currentPage: 'location',
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Popular',
                                style: titleTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'See All',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: blueColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 274,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  for (var popular in popularList)
                                    Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: PopularWidget(popular),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Recommended',
                          style: titleTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  for (var recommended in recommendedList)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 16,
                                      ),
                                      child: RecommendedWidgets(recommended),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width,
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Color(0xffFEFEFE),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 70,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavbarItem(
                imageUrl: 'assets/Home.png',
              ),
              BottomNavbarItem(
                imageUrl: 'assets/Ticket.png',
              ),
              BottomNavbarItem(
                imageUrl: 'assets/Heart.png',
              ),
              BottomNavbarItem(
                imageUrl: 'assets/Profile.png',
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
