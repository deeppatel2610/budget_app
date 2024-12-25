import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInputController extends GetxController {
  RxInt tabIndex = 0.obs;
  RxString title = "Expense".obs;
  DateTime? today;
  RxString account = "".obs;
  RxString category = "".obs;
  var txtAmount = TextEditingController();
  var txtNotes = TextEditingController();

  void changeCategory({required String text}) {
    category.value = text;
  }

  void changeAccount({required String text}) {
    account.value = text;
  }

  void chengIndex({required int index}) {
    tabIndex.value = index;
    if (index == 0) {
      title.value = "Expense";
    } else {
      title.value = "Income";
    }
  }

  void onDaySelected(DateTime day, DateTime focusedDay) {
    today = day;
    update();
  }
}
