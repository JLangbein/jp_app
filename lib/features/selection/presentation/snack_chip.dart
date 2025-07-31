import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';

class SnackChip extends StatelessWidget {
  // attributes
  final String label;

  const SnackChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(30.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
          child: Container(
            //height: 3.0,
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              color: (label == 'Salty')
                  ? Color.fromRGBO(255, 255, 255, 0.5)
                  : Color.fromRGBO(255, 255, 255, 0.1),
              border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.5)),
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: (label == 'All Categories')
                ? EdgeInsets.symmetric(horizontal: 12.0)
                : EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: (label == 'All Categories') ? true : false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Icon(
                      JpAppIcons.lunch,
                      size: 16.0,
                      color: Colors.white54,
                    ),
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700,
                    color: (label != 'Salty') ? Colors.white54 : Colors.black,
                  ),
                ),
                Visibility(
                  visible: (label == 'All Categories') ? true : false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
