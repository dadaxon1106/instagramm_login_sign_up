import 'package:flutter/material.dart';

class AnimationSignUp extends StatefulWidget {
  const AnimationSignUp({super.key});
  @override
  State<AnimationSignUp> createState() => _AnimationSignUp();
}

class _AnimationSignUp extends State<AnimationSignUp>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: animation(),
      ),
    );
  }

  Widget animation() {
    return ScaleTransition(
      scale: _animation,
      child: const Text(
        "Error",
        style: TextStyle(
          color: Colors.red,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
