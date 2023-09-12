import 'package:banking_app_ui/component/custom_app_bar.dart';
import 'package:banking_app_ui/component/my_card.dart';
import 'package:banking_app_ui/component/total_bal_amount.dart';
import 'package:banking_app_ui/component/transaction_details.dart';
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
      backgroundColor: const Color.fromARGB(255, 1, 2, 36),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                // Custom AppBar of Application
                const CustomAppBar(title: 'My Cards'),

                const SizedBox(height: 35),
                // Total Balance in Text
                const TotalBalanceAmount(),
                const SizedBox(height: 35),
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
                const SizedBox(height: 20),
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
                const TransactionDetails(
                  image: 'assets/starbucks.png',
                  title: 'Starbucks',
                  subTitle: 'Yesterday',
                  amountDebited: '-\$5.00',
                  placeOfSpending: 'Shopping',
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                const TransactionDetails(
                  image: 'assets/walmarts.png',
                  title: 'Starbucks',
                  subTitle: 'Yesterday',
                  amountDebited: '-\$112.96',
                  placeOfSpending: 'Shopping',
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                const TransactionDetails(
                  image: 'assets/netflix.png',
                  title: 'Netflix',
                  subTitle: 'Yesterday',
                  amountDebited: '-\$15.00',
                  placeOfSpending: 'Subscription',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
