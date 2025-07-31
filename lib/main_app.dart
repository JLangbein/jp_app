import 'package:flutter/material.dart';
import 'package:jp_app/features/start/presentation/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: GoogleFonts.inter().fontFamily),
      home: Scaffold(body: StartScreen()),
    );
  }
}
