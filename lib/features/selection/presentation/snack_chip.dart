import 'package:flutter/material.dart';

class SnackChip extends StatelessWidget {
  // attributes
  final String label;

  const SnackChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: StadiumBorder(side: BorderSide(color: Colors.white54)),
      labelPadding: EdgeInsets.fromLTRB(24.0, 6.0, 24.0, 6.0),

      color: WidgetStateColor.fromMap({
        WidgetState.disabled: Colors.black26,
        WidgetState.focused: Colors.white30,
        WidgetState.hovered: Colors.white30,
        WidgetState.selected: Colors.white70,
        WidgetState.pressed: Colors.white24,
        WidgetState.scrolledUnder: Colors.white24,
        WidgetState.any: Color.fromRGBO(255, 255, 255, 0.5),
        WidgetState.dragged: Colors.white24,
        WidgetState.error: Colors.red,
      }),
      label: Text(label),
      labelStyle: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w800),
    );
  }
}
