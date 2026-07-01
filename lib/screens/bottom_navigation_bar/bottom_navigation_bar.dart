import 'package:adv_flutter_ch_3/screens/home/home_page.dart';
import 'package:adv_flutter_ch_3/screens/user_input/user_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
