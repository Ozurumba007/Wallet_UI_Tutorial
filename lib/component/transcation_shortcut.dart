import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionShortCut extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;

  const TransactionShortCut({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 135, 106, 185),
              borderRadius: BorderRadiusDirectional.circular(25),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: GoogleFonts.baloo2(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
