// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design_netflix/core/colors.dart';
import 'package:ui_design_netflix/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: GoogleFonts.magra().fontFamily,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
        //colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Colors.black)
      ),
      home: ScreenMainpage(),
    );
  }
}
