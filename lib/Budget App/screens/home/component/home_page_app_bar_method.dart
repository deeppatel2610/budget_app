import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../search page/search_page.dart';

AppBar homePageAppBarMethod() {
  return AppBar(
    backgroundColor: Colors.white,
    actions: [
      Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          onPressed: () {
            Get.to(const SearchPage(),
                duration: const Duration(milliseconds: 600),
                fullscreenDialog: true,
                transition: Transition.rightToLeftWithFade);
          },
          icon: const Icon(
            Icons.search,
            color: Colors.blue,
            size: 25,
          ),
        ),
      ),
      const SizedBox(
        width: 8,
      ),
    ],
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Hi ",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            Text(
              "Deep Patel,",
              style: GoogleFonts.allison(
                  fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 25),
            ),
          ],
        ),
        const Text(
          "Let's master your finance!",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            letterSpacing: .5,
          ),
        )
      ],
    ),
  );
}
