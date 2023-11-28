import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({super.key});

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HINGE ANIMATION",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        foregroundColor: Colors.green,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Transform(
              transform: Matrix4.rotationX(controller.value * 6.28),
              alignment: Alignment.bottomCenter,
              child: ScaleTransition(
                scale: Tween(begin: 0.0, end: 1.0).animate(controller),
                child: const Icon(
                  Icons.abc,
                  size: 100,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
