import 'package:flutter/material.dart';

class TransactionShortCut extends StatelessWidget {
  const TransactionShortCut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 135, 106, 185),
        borderRadius: BorderRadiusDirectional.circular(25),
      ),
      child: Icon(
        Icons.add_card_rounded,
        color: Colors.white,
      ),
    );
  }
}
