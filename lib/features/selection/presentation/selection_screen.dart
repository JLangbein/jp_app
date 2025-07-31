import 'package:flutter/material.dart';
import 'package:jp_app/features/selection/data/chip_label_list.dart';
import 'package:jp_app/features/selection/presentation/snack_chip.dart';

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
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(24.0, 80.0, 24.0, 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose Your Favorite \nSnack',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                SnackChip(label: 'asdfg'),
                SizedBox(height: 16.0),
                SizedBox(
                  height: 100.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: chipLabelList
                        .map((label) => SnackChip(label: label))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
