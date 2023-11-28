// import 'package:animation_lesson_part_two/pages/hetch_animation/hetch_animations.dart';
// import 'package:animation_lesson_part_two/pages/home/home_view.dart';
// import 'package:animation_lesson_part_two/pages/searchpage/search_page.dart';
// import 'package:animation_lesson_part_two/pages/sign_in_page/sign_in.dart';
import 'package:animation_lesson_part_two/pages/animation_sign_u/animation_sign_up.dart';
import 'package:animation_lesson_part_two/pages/sign_in_page/sign_in.dart';
import 'package:animation_lesson_part_two/pages/splash/splash_view.dart';
import 'package:animation_lesson_part_two/pages/splash_second_page/splash_second_page.dart';
import 'package:animation_lesson_part_two/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
      ),
      home: const SplashView(),
    );
  }
}
