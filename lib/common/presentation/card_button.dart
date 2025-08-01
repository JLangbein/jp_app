import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class CardButton extends StatelessWidget {
  const CardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(
        //   context,
        // ).push(MaterialPageRoute(builder: (context) => SelectionScreen()));
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
            radius: 1.5,
            colors: [Color(0xFF908CF5), Color(0xFFBB8DE1)],
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 5.0),
              blurRadius: 20.0,
              color: Color(0xFFEA71C5),
            ),
            BoxShadow(
              blurStyle: BlurStyle.inner,
              offset: Offset(0.0, 3.0),
              blurRadius: 15.0,
              color: Color(0xFF9375B6),
            ),
            BoxShadow(
              blurStyle: BlurStyle.inner,
              offset: Offset(0.0, 0.0),
              blurRadius: 15.0,
              color: Color(0xFFFFACE4),
            ),
          ],
        ),
        // foregroundDecoration: BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14.0, 10.0, 14.0, 12.0),
          child: Text(
            'Add to order',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
