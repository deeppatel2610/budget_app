import 'package:adv_flutter_ch_3/Budget%20App/screens/user%20input/component/select_Icon_method_category.dart';
import 'package:flutter/material.dart';

Row categoryIconMethodForIncome() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      selectIconMethod2(
        isFilter: false,
        text: "Salary",
        icon: Icons.card_travel,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      ),
      selectIconMethod2(
        isFilter: false,
        text: "Refund",
        icon: Icons.currency_exchange,
        iconColor: Colors.blue.shade900,
        bgColor: Colors.blue.shade100,
      ),
      selectIconMethod2(
        isFilter: false,
        text: "Sell",
        icon: Icons.sell,
        iconColor: Colors.orange.shade900,
        bgColor: Colors.orange.shade100,
      ),
      selectIconMethod2(
        isFilter: false,
        text: "Rewards",
        icon: Icons.redeem,
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
