import 'package:banking_app_ui/component/custom_app_bar.dart';
import 'package:banking_app_ui/component/total_bal_amount.dart';
import 'package:banking_app_ui/component/transcation_shortcut.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
              TotalBalanceAmount(),
              SizedBox(height: 20),
              // Transaction shortcut Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TransactionShortCut(
                    icon: Icons.add_card_outlined,
                    text: 'Send',
                  ),
                  TransactionShortCut(
                    icon: Icons.add_card_outlined,
                    text: 'Receive',
                  ),
                  TransactionShortCut(
                    icon: Icons.arrow_downward_rounded,
                    text: 'Withdraw',
                  ),
                  TransactionShortCut(
                    icon: Icons.dashboard_customize_outlined,
                    text: 'More',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
