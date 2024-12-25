import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../all_categories_page.dart';
import '../show categories page/show_categories_page.dart';

GestureDetector categoriesDecorationMethod({
  required int index,
  required List nameList,
  required List categoriesList,
}) {
  return GestureDetector(
    onTap: () {
      categoriesController.changeTitle(categories: nameList[index]);
      controller.filterByCategory(category: nameList[index]);
      Get.to(
        const ShowCategoriesPage(),
        transition: Transition.rightToLeftWithFade,
        fullscreenDialog: true,
        duration: const Duration(milliseconds: 600),
      );
    },
    child: Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: ListTile(
          leading: categoriesList[index],
          title: Text(
            nameList[index],
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17,
              letterSpacing: .2,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              categoriesController.changeTitle(categories: nameList[index]);
              controller.filterByCategory(
                  category:
                      categoriesController.categoriesNameForExpenseList[index]);
              Get.to(
                const ShowCategoriesPage(),
                transition: Transition.rightToLeftWithFade,
                fullscreenDialog: true,
                duration: const Duration(milliseconds: 600),
              );
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    ),
  );
}
