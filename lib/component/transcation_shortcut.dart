import 'package:flutter/material.dart';

class TransactionShortCut extends StatelessWidget {
  final IconData icon;
  final String text;

  const TransactionShortCut({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
        SizedBox(height: 5),
        Text(text)
      ],
    );
  }
}
