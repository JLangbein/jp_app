import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class CardButton extends StatelessWidget {
  const CardButton({super.key});

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
          radius: 2.0,
          colors: [
            Color.fromRGBO(144, 140, 245, 1.0),
            Color.fromRGBO(187, 141, 255, 1.0),
          ],
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
            color: Color.fromRGBO(237, 146, 215, 1.0),
          ),
          BoxShadow(
            blurStyle: BlurStyle.inner,
            offset: Offset(0.0, 3.0),
            blurRadius: 2.0,
            color: Color(0xFF9375B6),
          ),
          BoxShadow(
            blurStyle: BlurStyle.inner,
            offset: Offset(0.0, 0.0),
            blurRadius: 2.0,
            color: Color(0xFFFFACE4),
          ),
        ],
      ),
      // foregroundDecoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
        child: Text(
          'Add to order',
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
