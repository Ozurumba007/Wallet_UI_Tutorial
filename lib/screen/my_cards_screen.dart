import 'package:banking_app_ui/component/custom_app_bar.dart';
import 'package:banking_app_ui/component/total_bal_amount.dart';
import 'package:flutter/material.dart';

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
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
