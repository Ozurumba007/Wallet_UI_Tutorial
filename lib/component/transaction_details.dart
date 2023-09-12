import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionDetails extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String amountDebited;
  final String placeOfSpending;
  const TransactionDetails({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.amountDebited,
    required this.placeOfSpending,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 60,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color.fromARGB(255, 3, 5, 95),
        ),
        child: Container(
          // color: Colors.white,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: Image.asset(image),
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.baloo2(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: GoogleFonts.baloo2(
          fontWeight: FontWeight.w400,
          color: Colors.grey[600],
          fontSize: 16,
        ),
      ),
      trailing: Column(
        children: [
          Text(
            amountDebited,
            style: GoogleFonts.baloo2(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            placeOfSpending,
            style: GoogleFonts.baloo2(
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
