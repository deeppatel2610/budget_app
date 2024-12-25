import 'package:adv_flutter_ch_3/Budget%20App/controller/user_input_controller.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/user%20input/component/category_icon_method_for_income.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'component/category_icon_method.dart';
import 'component/expense_tab_method.dart';
import 'component/user_app_bar_method.dart';

/// todo: user input controller
var controllerUserInput = Get.put(UserInputController());

class UserInput extends StatelessWidget {
  const UserInput({super.key, required this.isSave, required this.index});

  final bool isSave;
  final int index;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: userAppBarMethod(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    tabMethod(
                      category: categoryIconMethod(),
                    ),
                    tabMethod(
                      category: categoryIconMethodForIncome(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  if (isSave) {
                    // todo: insert data
                    if (controllerUserInput.txtAmount.text != "" &&
                        controllerUserInput.txtNotes.text != "") {
                      controller.insertData(
                        amount:
                            double.parse(controllerUserInput.txtAmount.text),
                        notes: controllerUserInput.txtNotes.text,
                        time: controllerUserInput.today.toString(),
                        account: controllerUserInput.account.value,
                        category: controllerUserInput.category.value,
                        isIncome: controllerUserInput.tabIndex.value,
                      );
                      controllerUserInput.category.value = "";
                      Get.back();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Enter a Amount & Notes !",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          elevation: 15,
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.all(15),
                        ),
                      );
                    }
                  } else {
                    // todo: update data
                    if (controllerUserInput.txtAmount.text != "" &&
                        controllerUserInput.txtNotes.text != "") {
                      controller.updateData(
                        id: controller.recordsList[index].id!,
                        amount:
                            double.parse(controllerUserInput.txtAmount.text),
                        notes: controllerUserInput.txtNotes.text,
                        date: controllerUserInput.today.toString(),
                        account: controllerUserInput.account.value,
                        category: controllerUserInput.category.value,
                        isIncome: controllerUserInput.tabIndex.value,
                      );
                      Get.back();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Enter a Amount & Notes !",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          elevation: 15,
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.all(15),
                        ),
                      );
                    }
                  }
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
