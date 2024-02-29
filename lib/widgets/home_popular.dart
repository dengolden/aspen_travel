import 'package:aspen_travel/models/popular.dart';
import 'package:aspen_travel/pages/details_page.dart';
import 'package:aspen_travel/theme.dart';
import 'package:flutter/material.dart';

final List<Popular> popularList = [
  Popular(
      id: 1,
      name: 'Alley Palace',
      rating: 4.1,
      imageUrl: 'assets/popular_1.png'),
  Popular(
      id: 2,
      name: 'Coeurdes Alpes',
      rating: 4.5,
      imageUrl: 'assets/popular_2.png'),
  // Add more items as needed
];

class PopularWidget extends StatelessWidget {
  final Popular popular;
  PopularWidget(this.popular);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (popular.id == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPageScreen(),
            ),
          );
        }
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              popular.imageUrl,
              width: 188,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 175,
              left: 12,
              right: 83,
              bottom: 42,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicWidth(
                  child: Container(
                    height: 23,
                    decoration: BoxDecoration(
                      color: secondaryBlackColor,
                      borderRadius: BorderRadius.circular(59),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          popular.name,
                          style: interRegularTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  width: 53,
                  height: 24,
                  decoration: BoxDecoration(
                    color: secondaryBlackColor,
                    borderRadius: BorderRadius.circular(59),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Color(
                          0xffF8D675,
                        ),
                      ),
                      Text(
                        popular.rating.toStringAsFixed(1),
                        style: interRegularTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 200,
              left: 148,
            ),
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Color(0xffF3F8FE),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                size: 15,
                color: Color(
                  0xffEC5655,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
