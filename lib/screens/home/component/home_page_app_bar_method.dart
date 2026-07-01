import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../search_page/search_page.dart';

AppBar homePageAppBarMethod() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "WELCOME BACK",
          style: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: const Color(0xFF94A3B8), // Slate 400
          ),
        ),
        const SizedBox(height: 2),
        Text(
          "Let's master your finance!",
          style: GoogleFonts.poppins(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.2,
          ),
        ),
      ],
    ),
    actions: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFF1F5F9), // Slate 100
          borderRadius: BorderRadius.circular(12),
        ),
        child: IconButton(
          onPressed: () {
            Get.to(
              const SearchPage(),
              duration: const Duration(milliseconds: 600),
              fullscreenDialog: true,
              transition: Transition.rightToLeftWithFade,
            );
          },
          icon: const Icon(
            Icons.search_rounded,
            color: Color(0xFF475569), // Slate 600
            size: 22,
          ),
          splashRadius: 24,
        ),
      ),
      const SizedBox(
        width: 16,
      ),
    ],
  );
}
