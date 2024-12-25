import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/home/component/list_view_Icon_method.dart';

class AllCategoriesController extends GetxController {
  List categoriesForExpenseList = [
    // Food
    listViewIconMethod(
      icon: Icons.fastfood_outlined,
      iconColor: Colors.orange.shade900,
      bgColor: Colors.orange.shade100,
    ),
    // Shopping
    listViewIconMethod(
      icon: Icons.shopping_bag_outlined,
      iconColor: Colors.blue.shade900,
      bgColor: Colors.blue.shade100,
    ),
    // Car
    listViewIconMethod(
      icon: Icons.car_repair_outlined,
      iconColor: Colors.orange.shade900,
      bgColor: Colors.orange.shade100,
    ),
    // Medical
    listViewIconMethod(
      icon: Icons.medical_information_outlined,
      iconColor: Colors.blue.shade900,
      bgColor: Colors.blue.shade100,
    ),
  ];
  List categoriesNameForExpenseList = [
    "Food",
    "Shopping",
    "Car",
    "Medical",
  ];
  List categoriesForIncomeList = [
    // Salary
    listViewIconMethod(
      icon: Icons.card_travel,
      iconColor: Colors.orange.shade900,
      bgColor: Colors.orange.shade100,
    ),
    // Refund
    listViewIconMethod(
      icon: Icons.currency_exchange,
      iconColor: Colors.blue.shade900,
      bgColor: Colors.blue.shade100,
    ),
    // Sell
    listViewIconMethod(
      icon: Icons.sell,
      iconColor: Colors.orange.shade900,
      bgColor: Colors.orange.shade100,
    ),
    // Rewards
    listViewIconMethod(
      icon: Icons.redeem,
      iconColor: Colors.blue.shade900,
      bgColor: Colors.blue.shade100,
    ),
  ];
  List categoriesNameForIncomeList = [
    "Salary",
    "Refund",
    "Sell",
    "Rewards",
  ];
  List categoriesForOther = [
    // Other
    listViewIconMethod(
      icon: Icons.grid_view,
      iconColor: Colors.blueGrey.shade800,
      bgColor: Colors.blueGrey.shade100,
    ),
  ];
  List categoriesNameForOther = [
    "Other",
  ];
  RxString title = "".obs;

  void changeTitle({required String categories}) {
    title.value = categories;
  }
}
