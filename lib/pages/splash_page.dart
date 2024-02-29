import 'package:aspen_travel/pages/home_page.dart';
import 'package:aspen_travel/theme.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/splash_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 93,
              left: 70,
              right: 60,
            ),
            child: Image.asset(
              'assets/aspen_title.png',
              width: 263,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 620,
              left: 32,
              right: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Plan your\n',
                        style: montserratRegularTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(
                        text: 'Luxurious\nVacation',
                        style: montserratMediumTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                    width: 350,
                    height: 51,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePageScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Explore',
                        style: interBoldTextStyle.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
