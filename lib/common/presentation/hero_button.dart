import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:jp_app/features/selection/presentation/selection_screen.dart';

class HeroButton extends StatelessWidget {
  const HeroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => SelectionScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: GradientBoxBorder(
            width: 2.0,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(255, 255, 255, 0.4),
                Color.fromRGBO(0, 0, 0, 0.2),
              ],
            ),
          ),
          gradient: RadialGradient(
            center: Alignment.bottomRight,
            radius: 3.5,
            colors: [
              Color.fromRGBO(246, 158, 163, 1.0),
              Color.fromRGBO(233, 112, 196, 1.0),
            ],
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 5.0),
              blurRadius: 20.0,
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
          padding: const EdgeInsets.fromLTRB(64.0, 12.0, 64.0, 12.0),
          child: Text(
            'Order Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
