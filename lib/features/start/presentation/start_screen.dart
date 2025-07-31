import 'dart:ui';

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
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgrounds/bg_startscreen.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 110.0,
          left: -30.0,
          child: Image.asset('assets/products/cupcake_chick.png', scale: 0.85),
        ),
        Positioned(
          top: 480.0,
          left: 00.0,
          child: Image.asset(
            'assets/utils/snack_snack.png',
            scale: 0.9,
            color: Color.fromRGBO(255, 255, 255, 0.3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 84.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(30.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color.fromRGBO(255, 255, 255, 0.01),
                      border: BoxBorder.all(
                        width: 1.0,
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        spacing: 8.0,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Feeling Snackish Today?',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Explore Angi\'s most popular snack selection and get instantly happy.',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 16.0),
                          HeroButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
