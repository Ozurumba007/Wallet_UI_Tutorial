import 'package:banking_app_ui/component/custom_app_bar.dart';
import 'package:banking_app_ui/component/total_bal_amount.dart';
import 'package:banking_app_ui/component/transcation_shortcut.dart';
import 'package:banking_app_ui/screen/my_cards_screen.dart';
import 'package:flutter/material.dart';

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
          child: Column(
            children: [
              const SizedBox(height: 10),
              // Custom AppBar of Application
              const CustomAppBar(title: 'Home'),
              const SizedBox(height: 20),
              // Total Balance in Text
              const TotalBalanceAmount(),
              const SizedBox(height: 20),
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
                          builder: (context) => MyCardsScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 40),
              // Transaction Text
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Transaction',
                    style: TextStyle(
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
