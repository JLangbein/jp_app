import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';

class PriceButton extends StatelessWidget {
  // attributes
  final double price;

  const PriceButton({super.key, required this.price});

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
          radius: 5.0,
          colors: [
            Color.fromRGBO(246, 158, 163, 1.0),
            Color.fromRGBO(233, 112, 196, 1.0),
          ],
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 5.0),
            blurRadius: 30.0,
            color: Color.fromRGBO(237, 146, 215, 0.7),
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
        padding: const EdgeInsets.fromLTRB(48.0, 8.0, 48.0, 8.0),
        child: Row(
          children: [
            Text(
              'Add to order for ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Icon(JpAppIcons.app_coin, color: Colors.white, size: 16.0),
            Text(
              price.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
