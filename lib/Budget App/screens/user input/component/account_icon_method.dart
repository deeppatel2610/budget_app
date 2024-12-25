import 'package:adv_flutter_ch_3/Budget%20App/screens/user%20input/component/select_icon_method_account.dart';
import 'package:flutter/material.dart';

Row accountIconMethod() {
  return Row(
    children: [
      const SizedBox(width: 5,),
      selectIconMethod(
          text: "Online Payment",
          icon: Icons.qr_code,
          bgColor: Colors.blue.shade100,
          iconColor: Colors.blue.shade900),
      const SizedBox(
        width: 5,
      ),
      selectIconMethod(
        text: "Cash",
        icon: Icons.payments,
        bgColor: Colors.orange.shade100,
        iconColor: Colors.orange.shade900,
      ),
      const SizedBox(
        width: 5,
      ),
      selectIconMethod(
        text: "Savings",
        icon: Icons.savings,
        bgColor: Colors.blue.shade100,
        iconColor: Colors.blueAccent.shade700,
      ),
      const SizedBox(
        width: 5,
      ),
      selectIconMethod(
        text: "Other",
        icon: Icons.grid_view,
        bgColor: Colors.blueGrey.shade100,
        iconColor: Colors.blueGrey.shade800,
      ),
    ],
  );
}
