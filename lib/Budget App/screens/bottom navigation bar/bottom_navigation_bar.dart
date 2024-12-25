import 'package:adv_flutter_ch_3/Budget%20App/controller/bottom_navigation_controller.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/user%20input/user_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/icon_method.dart';

/// todo: bottom navigation controller
var bottomNavigationController = Get.put(BottomNavigationController());

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => bottomNavigationController
            .screenList[bottomNavigationController.screenIndex.value],
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black,
        elevation: 7,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            iconMethod(
              index: 0,
              iconSelect: Icons.home,
              icon: Icons.home_outlined,
            ),
            const SizedBox(
              width: 20,
            ),
            iconMethod(
              index: 1,
              iconSelect: Icons.person,
              icon: Icons.person_2_outlined,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          controllerUserInput.today = DateTime.now();
          controllerUserInput.tabIndex.value = 0;
          controllerUserInput.account.value = "";
          controllerUserInput.category.value = "";
          controllerUserInput.txtAmount.clear();
          controllerUserInput.txtNotes.clear();
          controllerUserInput.chengIndex(index: 0);
          Get.to(
            const UserInput(
              isSave: true,
              index: 0,
            ),
            fullscreenDialog: true,
            transition: Transition.downToUp,
            duration: const Duration(milliseconds: 600),
          );
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 2,
                spreadRadius: 3,
              )
            ],
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
