import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalBalanceAmount extends StatelessWidget {
  const TotalBalanceAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '32,510.48',
          style: GoogleFonts.baloo2(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Total Balance in USD',
          style: GoogleFonts.baloo2(
            fontSize: 20,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
