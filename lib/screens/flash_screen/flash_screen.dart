import 'dart:async';

import 'package:adv_flutter_ch_3/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());

    Timer(
      const Duration(seconds: 3),
      () async {
        await authController.fetchUserData();
        if (authController.userList.isEmpty) {
          Get.offAllNamed("/SignUpScreen");
        } else {
          Get.offAllNamed("/LoginPage");
        }
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imgForFlashScreen),
          ),
        ),
      ),
    );
  }
}

String imgForFlashScreen =
    "https://images-platform.99static.com//h6kpkak16RyBusyHbQCTSwaK-gs=/120x119:836x835/fit-in/500x500/99designs-contests-attachments/66/66545/attachment_66545301";
