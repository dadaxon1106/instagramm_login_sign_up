import 'package:animation_lesson_part_two/pages/home/home_view.dart';
import 'package:animation_lesson_part_two/sign_up/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> with TickerProviderStateMixin {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  late final AnimationController _controller;
  late final AnimationController _controller2;
  late final AnimationController _controller3;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller3 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller3.repeat(reverse: true);
    _controller2.forward();
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // backgroundColor: Color(0x03045e),
      appBar: AppBar(
        title: const Text("SIGN IN"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 1.0),
                curve: Curves.bounceOut,
                duration: const Duration(seconds: 2),
                builder: (context, value, child) {
                  return Transform.scale(
                    scaleX: value,
                    scaleY: value,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: "email or user name",
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
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform(
                    transform: Matrix4.rotationY(
                      _controller.value * 6.28,
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: "password",
                      ),
                      validator: (value) {
                        if (value!.length < 8) {
                          return "Wrong password";
                        } else {
                          return null;
                        }
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-2, 0),
                      end: const Offset(0, 0),
                    ).animate(_controller2),
                    child: ScaleTransition(
                      scale: Tween(begin: 0.0, end: 1.0).animate(_controller3),
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.black,
                        size: 60,
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-1.2, 0),
                      end: const Offset(0, 0),
                    ).animate(_controller3),
                    child: Text(
                      "LOG IN",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return TweenAnimationBuilder(
                    tween: ColorTween(
                      begin: Colors.white,
                      end: Colors.orangeAccent,
                    ),
                    curve: Curves.bounceOut,
                    duration: const Duration(seconds: 1),
                    builder: (context, color, value) {
                      return SlideTransition(
                        position: Tween(
                          begin: const Offset(0, 3),
                          end: const Offset(0, 0),
                        ).animate(_controller),
                        child: ElevatedButton(
                          onPressed: () async {
                            var result = _key.currentState!.validate();
                            if (result) {
                              // await _controller2.forward();
                              // ignore: use_build_context_synchronously
                              Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return const HomeView();
                                  },
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            fixedSize: const Size(double.maxFinite, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "LOG IN",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have account yet",
                    style: TextStyle(fontSize: 24),
                  ),
                  CupertinoButton(
                    child: const Text("SIGN UP"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return SignUpView();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
