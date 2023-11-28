import 'package:animation_lesson_part_two/pages/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashViewSecond extends StatefulWidget {
  const SplashViewSecond({super.key});

  @override
  State<SplashViewSecond> createState() => _SplashViewSecondState();
}

class _SplashViewSecondState extends State<SplashViewSecond> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(
          builder: (context) {
            return const HomeView();
          },
        ), (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/animations/success.json",
            ),
            const Text("Successfully Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
