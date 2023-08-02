import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.endScreen();
    return Scaffold(
      body: Center(
        child: Animate(
          effects: const [ShimmerEffect()],
          child: Image.asset(
            'assets/icons/logo.png',
            width: 150,
          )
              .animate(onPlay: (controller) => controller.repeat())
              .shimmer(duration: const Duration(seconds: 2)),
        ),
      ),
    );
  }
}
