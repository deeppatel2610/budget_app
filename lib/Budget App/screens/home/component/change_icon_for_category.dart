import 'package:flutter/material.dart';

import 'list_view_Icon_method.dart';

class ChangeIconForCategory extends StatelessWidget {
  const ChangeIconForCategory({super.key, required this.category});

  final String? category;

  @override
  Widget build(BuildContext context) {
    if (category == "Food") {
      return listViewIconMethod(
        icon: Icons.fastfood_outlined,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      );
    } else if (category == "Shopping") {
      return listViewIconMethod(
        icon: Icons.shopping_bag_outlined,
        iconColor: Colors.blue.shade900,
        bgColor: Colors.blue.shade100,
      );
    } else if (category == "Car") {
      return listViewIconMethod(
        icon: Icons.car_repair_outlined,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      );
    } else if (category == "Medical") {
      return listViewIconMethod(
        icon: Icons.medical_information_outlined,
        iconColor: Colors.blue.shade900,
        bgColor: Colors.blue.shade100,
      );
    } else if (category == "Salary") {
      return listViewIconMethod(
        icon: Icons.card_travel,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      );
    } else if (category == "Refund") {
      return listViewIconMethod(
        icon: Icons.currency_exchange,
        iconColor: Colors.blue.shade900,
        bgColor: Colors.blue.shade100,
      );
    } else if (category == "Sell") {
      return listViewIconMethod(
        icon: Icons.sell,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      );
    } else if (category == "Rewards") {
      return listViewIconMethod(
        icon: Icons.redeem,
        iconColor: Colors.blue.shade900,
        bgColor: Colors.blue.shade100,
      );
    }
    return listViewIconMethod(
      icon: Icons.grid_view,
      iconColor: Colors.blueGrey.shade800,
      bgColor: Colors.blueGrey.shade100,
    );
  }
}
