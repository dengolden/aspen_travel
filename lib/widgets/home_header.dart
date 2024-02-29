import 'package:aspen_travel/theme.dart';
import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Explore',
              style: montserratRegularTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/location_icon.png',
                  width: 16,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Aspen, USA',
                  style: interRegularTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Transform.rotate(
                  angle: 270 * 3.14 / 180,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 12,
                    color: blueColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          'Aspen',
          style: montserratMediumTextStyle.copyWith(
            fontSize: 32,
          ),
        ),
      ],
    );
  }
}
