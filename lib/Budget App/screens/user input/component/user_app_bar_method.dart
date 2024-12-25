import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../user_input.dart';

AppBar userAppBarMethod() {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(Icons.arrow_back_ios_new_outlined),
    ),
    title: Obx(
      () => Text(
        controllerUserInput.title.value,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          fontSize: 21,
        ),
      ),
    ),
    bottom: ButtonsTabBar(
      onTap: (index) {
        controllerUserInput.chengIndex(index: index);
      },
      backgroundColor: Colors.blue,
      height: 70,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 18,
        letterSpacing: .5,
      ),
      unselectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: .5),
      unselectedBackgroundColor: Colors.grey.shade300,
      contentPadding: const EdgeInsets.only(left: 60),
      width: 200,
      tabs: const [
        Tab(
          text: "Expense",
        ),
        Tab(
          text: "Income",
        ),
      ],
    ),
  );
}
