import 'package:flutter/material.dart';
import 'package:jp_app/common/presentation/product_card.dart';
import 'package:jp_app/features/selection/data/chip_label_list.dart';
import 'package:jp_app/features/selection/presentation/hero_container.dart';
import 'package:jp_app/features/selection/presentation/snack_chip.dart';
import '/common/data/product_repository.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //fit: StackFit.expand,
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
              //mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
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
                // SizedBox(height: 16.0),
                // SnackChip(label: 'Salty'),
                SizedBox(height: 16.0),
                SizedBox(
                  height: 48.0,
                  child: ListView(
                    clipBehavior: Clip.none,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: chipLabelList
                        .map((label) => SnackChip(label: label))
                        .toList(),
                  ),
                ),
                SizedBox(height: 40.0),
                HeroContainer(product: ProductRepository().products[0]),
                SizedBox(height: 40.0),
                Text(
                  'We Recommend',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 18.0),
                SizedBox(
                  height: 294.0,
                  child: ListView(
                    clipBehavior: Clip.none,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: ProductRepository().products
                        .sublist(
                          1,
                        ) // to leave out the first product (Angi's Burger)
                        .map((product) => ProductCard(product: product))
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
