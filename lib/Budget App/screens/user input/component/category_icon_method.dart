import 'package:adv_flutter_ch_3/Budget%20App/screens/user%20input/component/select_Icon_method_category.dart';
import 'package:flutter/material.dart';

Row categoryIconMethod() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      selectIconMethod2(
        text: "Food",
        isFilter: false,
        icon: Icons.fastfood_outlined,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      ),
      selectIconMethod2(
        text: "Shopping",
        isFilter: false,
        icon: Icons.shopping_bag_outlined,
        iconColor: Colors.blue.shade900,
        bgColor: Colors.blue.shade100,
      ),
      selectIconMethod2(
        text: "Car",
        isFilter: false,
        icon: Icons.car_repair_outlined,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      ),
      selectIconMethod2(
        text: "Medical",
        isFilter: false,
        icon: Icons.medical_information_outlined,
        iconColor: Colors.blue.shade900,
        bgColor: Colors.blue.shade100,
      ),
      selectIconMethod2(
        isFilter: false,
        text: "Other",
        icon: Icons.grid_view,
        iconColor: Colors.blueGrey.shade800,
        bgColor: Colors.blueGrey.shade100,
      ),
    ],
  );
}
