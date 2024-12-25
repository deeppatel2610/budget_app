import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../user input/user_input.dart';

ActionPane slidableMethod({
  required IconData icon,
  required Color color,
  required bool isDelete,
  required int index,
}) {
  return ActionPane(
    motion: const StretchMotion(),
    children: <Widget>[
      SlidableAction(
        borderRadius: BorderRadius.circular(12),
        onPressed: (context) {
          if (isDelete) {
            controller.deleteData(id: controller.recordsList[index].id!);
          } else {
            controllerUserInput.today = DateTime.tryParse(
                controller.recordsList[index].date.toString());
            controllerUserInput.tabIndex.value =
                controller.recordsList[index].isIncome!;
            controllerUserInput.account.value =
                controller.recordsList[index].account!;
            controllerUserInput.category.value =
                controller.recordsList[index].category!;
            controllerUserInput.txtAmount.text =
                controller.recordsList[index].amount.toString();
            controllerUserInput.txtNotes.text =
                controller.recordsList[index].notes!;
            Get.to(
              UserInput(
                isSave: false,
                index: index,
              ),
              fullscreenDialog: true,
              transition: Transition.leftToRightWithFade,
              duration: const Duration(milliseconds: 600),
            );
          }
        },
        backgroundColor: color,
        icon: icon,
      ),
    ],
  );
}
