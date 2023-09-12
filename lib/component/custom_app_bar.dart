import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 11, 13, 110),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.baloo2(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 11, 13, 110),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Icon(
            Icons.notifications_none_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
