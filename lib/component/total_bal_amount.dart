import 'package:flutter/material.dart';

class TotalBalanceAmount extends StatelessWidget {
  const TotalBalanceAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '32,510.48',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Total Balance in USD',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
