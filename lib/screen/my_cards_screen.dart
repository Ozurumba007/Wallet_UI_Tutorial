import 'package:banking_app_ui/component/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyCardsScreen extends StatefulWidget {
  const MyCardsScreen({super.key});

  @override
  State<MyCardsScreen> createState() => _MyCardsScreenState();
}

class _MyCardsScreenState extends State<MyCardsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 2, 36),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            CustomAppBar(title: 'My Cards'),
          ],
        ),
      ),
    );
  }
}
