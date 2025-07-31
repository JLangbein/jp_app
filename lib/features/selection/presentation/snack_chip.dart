import 'dart:math';

import 'package:flutter/material.dart';

class SnackChip extends StatelessWidget {
  // attributes
  final String label;

  const SnackChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 3.0,
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.5),
        border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.7)),
        borderRadius: BorderRadius.circular(200.0),
      ),
      padding: EdgeInsets.fromLTRB(32.0, 14.0, 32.0, 14.0),
      child: Text(
        label,
        style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w800),
      ),
    );
  }
}
