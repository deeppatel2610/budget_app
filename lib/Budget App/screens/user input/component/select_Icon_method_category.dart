import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../user_input.dart';

Obx selectIconMethod2(
    {required String text,
    required IconData icon,
    required Color bgColor,
    required Color iconColor,
    required bool isFilter}) {
  return Obx(
    () => GestureDetector(
      onTap: () {
        controllerUserInput.changeCategory(text: text);
        if (isFilter) {
          controller.filterByCategory(category: text);
        }
        // todo: code for a filterer logic
      },
      child: Container(
        height: 72,
        width: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
          border: (controllerUserInput.category.value == text)
              ? Border.all(
                  color: Colors.blue,
                  width: 2.5,
                )
              : null,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: (controllerUserInput.category.value == text) ? 30 : 26,
        ),
      ),
    ),
  );
}
