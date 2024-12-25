import 'package:flutter/material.dart';
import '../../user input/component/select_Icon_method_category.dart';

Row filterCategoryIconMethod() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      selectIconMethod2(
        isFilter: true,
        text: "Food",
        icon: Icons.fastfood_outlined,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      ),
      selectIconMethod2(
        isFilter: true,
        text: "Shopping",
        icon: Icons.shopping_bag_outlined,
        iconColor: Colors.blue.shade900,
        bgColor: Colors.blue.shade100,
      ),
      selectIconMethod2(
        isFilter: true,
        text: "Car",
        icon: Icons.car_repair_outlined,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      ),
      selectIconMethod2(
        isFilter: true,
        text: "Refund",
        icon: Icons.currency_exchange,
        iconColor: Colors.blue.shade900,
        bgColor: Colors.blue.shade100,
      ),
      selectIconMethod2(
        isFilter: true,
        text: "Sell",
        icon: Icons.sell,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      ),
    ],
  );
}
