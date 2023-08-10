import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/button_auth.dart';
import 'package:trashure/app/global_widgets/text_field_auth.dart';
import 'package:trashure/constant.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: white,
        body: Padding(
          padding: const EdgeInsets.all(largePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: extraLargePadding,
              ),
              Animate(
                effects: const [ShimmerEffect()],
                child: Image.asset(
                  'assets/icons/logo.png',
                  width: 120,
                )
                    .animate(onPlay: (controller) => controller.repeat())
                    .shimmer(duration: const Duration(seconds: 2)),
              ),
              const SizedBox(height: extraLargePadding * 2),
              Text("Login untuk melanjutkan",
                  style: customTextSTyle(22.0, black, FontWeight.w600)),
              const SizedBox(height: 15),
              Container(
                height: 4,
                width: 40,
                decoration: const BoxDecoration(color: yellow),
              ),
              const SizedBox(height: extraLargePadding),
              textFieldNormal(context, "Alamat email"),
              const SizedBox(height: regularPadding),
              textFieldPassword(context, "Kata sandi"),
              const SizedBox(height: mediumPadding),
              buttonAuth(context, "Masuk", double.infinity, () {
                Get.toNamed("/navbar");
              }),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum mempunyai akun? ",
                    style: customTextSTyle(16.0, black, FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/register");
                    },
                    child: Text(
                      "Daftar",
                      style: customTextSTyle(16.0, yellow, FontWeight.w600),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
