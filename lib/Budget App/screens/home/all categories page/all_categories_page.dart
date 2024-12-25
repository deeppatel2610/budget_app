import 'package:adv_flutter_ch_3/Budget%20App/controller/All_Categories_controller.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/user%20input/user_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/categories_decoration_method.dart';

/// todo: categories controller
var categoriesController = Get.put(AllCategoriesController());

class AllCategoriesPage extends StatelessWidget {
  const AllCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            controller.fetchData();
            controllerUserInput.category.value = '';
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Text(
          "Categories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            fontSize: 21,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Expense Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  letterSpacing: .2,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ...List.generate(
                categoriesController.categoriesForExpenseList.length,
                (index) => categoriesDecorationMethod(
                  index: index,
                  categoriesList: categoriesController.categoriesForExpenseList,
                  nameList: categoriesController.categoriesNameForExpenseList,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Income Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  letterSpacing: .2,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ...List.generate(
                categoriesController.categoriesForIncomeList.length,
                (index) => categoriesDecorationMethod(
                  index: index,
                  categoriesList: categoriesController.categoriesForIncomeList,
                  nameList: categoriesController.categoriesNameForIncomeList,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Other Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  letterSpacing: .2,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ...List.generate(
                categoriesController.categoriesForOther.length,
                (index) => categoriesDecorationMethod(
                  index: index,
                  categoriesList: categoriesController.categoriesForOther,
                  nameList: categoriesController.categoriesNameForOther,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
