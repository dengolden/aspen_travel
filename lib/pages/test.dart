import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Hello World',
            style: GoogleFonts.montserrat(
              fontSize: 20,
            ),
          ),
          Image.asset(
            'assets/Ticket.png',
            width: 50,
          ),
        ],
      ),
    );
  }
}
