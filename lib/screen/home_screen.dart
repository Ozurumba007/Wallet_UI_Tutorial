import 'package:banking_app_ui/component/custom_app_bar.dart';
import 'package:banking_app_ui/component/total_bal_amount.dart';
import 'package:banking_app_ui/component/transcation_shortcut.dart';
import 'package:banking_app_ui/screen/my_cards_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/transaction_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 2, 36),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                // Custom AppBar of Application
                const CustomAppBar(title: 'Home'),
                const SizedBox(height: 35),
                // Total Balance in Text
                const TotalBalanceAmount(),
                const SizedBox(height: 35),
                // Transaction shortcut Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TransactionShortCut(
                      icon: Icons.add_card_outlined,
                      text: 'Send',
                    ),
                    const TransactionShortCut(
                      icon: Icons.add_card_outlined,
                      text: 'Receive',
                    ),
                    const TransactionShortCut(
                      icon: Icons.arrow_downward_rounded,
                      text: 'Withdraw',
                    ),
                    TransactionShortCut(
                      icon: Icons.dashboard_customize_outlined,
                      text: 'More',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyCardsScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Transaction Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Transaction',
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
                  title: 'Walmart',
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
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                const TransactionDetails(
                  image: 'assets/flipcart.png',
                  title: 'Flipcart',
                  subTitle: 'Yesterday',
                  amountDebited: '-\$43.78',
                  placeOfSpending: 'Ecommerce',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
