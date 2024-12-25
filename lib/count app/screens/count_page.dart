import 'package:adv_flutter_ch_3/count%20app/logic/count_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CountLogic());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Count App",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.count.value.toString(),
            style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 100,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
