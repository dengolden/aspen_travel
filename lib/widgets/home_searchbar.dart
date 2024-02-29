import 'package:aspen_travel/theme.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatefulWidget {
  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<HomeSearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 55,
      decoration: BoxDecoration(
        color: Color.fromARGB(40, 168, 204, 240),
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
            hintText: 'Find Things to do',
            hintStyle:
                interRegularTextStyle.copyWith(fontSize: 13, color: greyColor),
            prefixIcon: Icon(
              Icons.search,
              color: greyColor,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(
              left: 16,
              top: 13,
              bottom: 16,
              right: 193,
            )),
      ),
    );
  }
}
