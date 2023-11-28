// import 'package:animation_lesson_part_two/pages/home/home_view.dart';
import 'package:animation_lesson_part_two/pages/sign_in_page/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) {
              return const SignInView();
            },
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/animations/instagramm.json",
              height: 200,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Instagramm",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
