import 'package:adv_flutter_ch_3/Budget%20App/screens/home/all%20categories%20page/all_categories_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../component/show_income_and_expense.dart';

class ShowCategoriesPage extends StatelessWidget {
  const ShowCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Obx(
          () => Text(
            categoriesController.title.value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 21,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: showIncomeAndExpense(),
      ),
    );
  }
}
