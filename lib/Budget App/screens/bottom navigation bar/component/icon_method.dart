import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../profile/profile_page.dart';
import '../bottom_navigation_bar.dart';

Widget iconMethod({
  required int index,
  required IconData iconSelect,
  required IconData icon,
}) {
  return GestureDetector(
    onTap: () {
      bottomNavigationController.indexChange(index: index);
    },
    child: Obx(
      () => Icon(
        (bottomNavigationController.screenIndex.value == index)
            ? iconSelect
            : icon,
        color: (bottomNavigationController.screenIndex.value == index)
            ? Colors.blue
            : Colors.blueGrey,
        size: (bottomNavigationController.screenIndex.value == index) ? 35 : 30,
      ),
    ),
  );
}
