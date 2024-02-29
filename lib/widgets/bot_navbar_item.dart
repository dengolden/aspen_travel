import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;

  BottomNavbarItem({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 24,
        ),
        Spacer(),
      ],
    );
  }
}
