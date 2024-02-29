import 'package:aspen_travel/models/facilities.dart';
import 'package:aspen_travel/theme.dart';
import 'package:flutter/material.dart';

class FacilitiesItem extends StatelessWidget {
  final Facilities facilities;
  FacilitiesItem(this.facilities);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 74,
      decoration: BoxDecoration(
        color: Color(0xffEFF4FC),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            facilities.imageUrl,
            width: 32,
          ),
          SizedBox(height: 6),
          Text(
            facilities.facility,
            style: interRegularTextStyle.copyWith(
              color: greyColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
