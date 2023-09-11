import 'package:banking_app_ui/component/custom_app_bar.dart';
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
      backgroundColor: Color.fromARGB(255, 1, 2, 36),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              // Custom AppBar of Application
              const CustomAppBar(title: 'Home'),
              const SizedBox(height: 20),
              // Total Balance in Text
            ],
          ),
        ),
      ),
    );
  }
}
