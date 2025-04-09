import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bottom navigation bar/bottom_navigation_bar.dart';
import '../profile/profile_page.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) async {
        await profileController.fetchUserData();
        if (profileController.userList.isEmpty) {
          Navigator.of(context).pushReplacementNamed("/SignUpScreen");
        } else if (profileController.userList[0].isCheck == 1) {
          Navigator.of(context).pushReplacementNamed("/LoginPage");
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
