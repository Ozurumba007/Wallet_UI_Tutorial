import 'package:banking_app_ui/component/custom_app_bar.dart';
import 'package:banking_app_ui/component/my_card.dart';
import 'package:banking_app_ui/component/total_bal_amount.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardsScreen extends StatefulWidget {
  const MyCardsScreen({super.key});

  @override
  State<MyCardsScreen> createState() => _MyCardsScreenState();
}

class _MyCardsScreenState extends State<MyCardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 2, 36),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              // Custom AppBar of Application
              CustomAppBar(title: 'My Cards'),

              const SizedBox(height: 40),
              // Total Balance in Text
              TotalBalanceAmount(),
              SizedBox(height: 40),
              // List of cards
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MyCard(
                      cardNumber: '**** 5052',
                      colors: [
                        Color.fromARGB(255, 214, 53, 174),
                        Color.fromARGB(255, 14, 99, 209),
                      ],
                    ),
                    SizedBox(width: 15),
                    MyCard(
                      cardNumber: '**** 3274',
                      colors: [
                        Color.fromARGB(255, 31, 192, 192),
                        Color.fromARGB(255, 14, 99, 209),
                      ],
                    ),
                    SizedBox(width: 15),
                    MyCard(
                      cardNumber: '**** 7607',
                      colors: [
                        Color.fromARGB(255, 177, 14, 209),
                        Color.fromARGB(255, 182, 92, 8),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Transaction Text
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Transactions',
                    style: GoogleFonts.baloo2(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
