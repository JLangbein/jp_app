import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgrounds/bg_mainscreen.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ],
      ),
    );
  }
}