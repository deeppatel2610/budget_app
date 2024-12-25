import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../user_input.dart';

Obx selectIconMethod({
  required String text,
  required IconData icon,
  required Color bgColor,
  required Color iconColor,
}) {
  return Obx(
    () => GestureDetector(
      onTap: () {
        controllerUserInput.changeAccount(text: text);
      },
      child: Container(
        height: 72,
        width: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
          border: (controllerUserInput.account.value == text)
              ? Border.all(
                  color: Colors.blue,
                  width: 2.5,
                )
              : null,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: (controllerUserInput.account.value == text) ? 30 : 26,
        ),
      ),
    ),
  );
}
