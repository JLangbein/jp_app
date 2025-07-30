import 'package:flutter/material.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:jp_app/common/presentation/card_button.dart';
import 'package:jp_app/common/presentation/hero_button.dart';
import 'package:jp_app/common/presentation/price_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: PriceButton(price: 7.99));
  }
}
