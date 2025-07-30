import 'package:flutter/material.dart';
import 'package:jp_app/common/domain/jp_app_icons.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Center(child: Icon(JpAppIcons.app_coin))]);
  }
}
