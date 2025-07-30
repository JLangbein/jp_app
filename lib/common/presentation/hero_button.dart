import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class HeroButton extends StatelessWidget {
  const HeroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: GradientBoxBorder(
          width: 3.0,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(255, 255, 255, 0.5),
              Color.fromRGBO(0, 0, 0, 0.2),
            ],
          ),
        ),
        gradient: RadialGradient(
          center: Alignment.bottomRight,
          radius: 3.0,
          colors: [
            Color.fromRGBO(246, 158, 163, 1.0),
            Color.fromRGBO(233, 112, 196, 1.0),
          ],
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
            color: Color.fromRGBO(237, 146, 215, 1.0),
          ),
          BoxShadow(
            offset: Offset(0.0, 3.0),
            spreadRadius: -5.0,
            blurRadius: 3.0,
            color: Color(0xFF9375B6),
          ),
          BoxShadow(
            offset: Offset(0.0, 0.0),
            spreadRadius: -5.0,
            blurRadius: 3.0,
            color: Color(0xFFFFACE4),
          ),
        ],
      ),
      // foregroundDecoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(64.0, 16.0, 64.0, 16.0),
        child: Text(
          'Order Now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
