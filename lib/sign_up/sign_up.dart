import 'package:animation_lesson_part_two/pages/animation_sign_u/animation_sign_up.dart';
import 'package:animation_lesson_part_two/pages/home/home_view.dart';
import 'package:animation_lesson_part_two/pages/splash_second_page/splash_second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> with TickerProviderStateMixin {
  final _key = GlobalKey<FormState>();
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final Animation<double> _animation2;
  late final Animation<double> _animation3;
  late final Animation<double> _animation4;
  late final AnimationController _controller2;

  late final AnimationController _controller3;
  late final AnimationController _controller4;
  late final AnimationController _controller5;
  final passwordController = TextEditingController();
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1700),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );
    _controller3 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1900),
    );
    _controller4 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation2 = Tween(begin: 0.0, end: 1.0).animate(_controller2);
    _animation3 = Tween(begin: 0.0, end: 1.0).animate(_controller3);
    _animation4 = Tween(begin: 0.0, end: 1.0).animate(_controller4);
    _controller.forward();
    _controller2.forward();
    _controller3.forward();
    _controller4.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Form(
        key: _key,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ScaleTransition(
              scale: _animation,
              child: FadeTransition(
                opacity: _animation,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: "email",
                  ),
                  validator: (value) {
                    final emailValid =
                        RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                    if (!emailValid.hasMatch(value ?? "")) {
                      return "Wrong email";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ScaleTransition(
              scale: _animation2,
              child: FadeTransition(
                opacity: _animation2,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: "name",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter the name";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SlideTransition(
              position: Tween(
                begin: const Offset(-2, -2),
                end: const Offset(0, 0),
              ).animate(_controller3),
              child: FadeTransition(
                opacity: _animation3,
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Text("Password"),
                  ),
                  validator: (value) {
                    final passworValid = RegExp(r".{8,}");
                    if (!passworValid.hasMatch(value ?? "")) {
                      return "Wrong password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SlideTransition(
              position: Tween(
                begin: const Offset(2, 2),
                end: const Offset(0, 0),
              ).animate(_controller4),
              child: FadeTransition(
                opacity: _animation4,
                child: TextFormField(
                  // controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: "confirm password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty && value != passwordController.text) {
                      return "Password has not match";
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                var result = _key.currentState!.validate();
                if (result) {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return const SplashViewSecond();
                      },
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: const Size(double.maxFinite, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("SIGN UP",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
