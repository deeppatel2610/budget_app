import 'package:adv_flutter_ch_3/TODO%20App/logic/TODO_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../uitil/global.dart';
import 'component/bottom_sheet_method.dart';
import 'component/button_method.dart';
import 'component/content_method.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TodoLogic());

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "TODO App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
            fontSize: 25,
          ),
        ),
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: controller.taskList.length,
            itemBuilder: (context, index) => Card(
              color: Colors.blue.shade100,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) =>
                        BottomSheetMethod(controller, index, context),
                  );
                },
                child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.deleteTask(index);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {
                          txtTask.text = "";
                          txtDetail.text = "";
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Edit TODO"),
                              content: contentMethod(
                                txtTask: txtEditTask,
                                txtDetail: txtEditDetail,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    controller.editTask(
                                      index: index,
                                      task: txtEditTask.text,
                                      detail: txtEditDetail.text,
                                      hour: DateTime.now().hour.toString(),
                                      minute: DateTime.now().minute.toString(),
                                    );
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "Save",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        icon: const Icon(Icons.edit),
                      ),
                    ],
                  ),
                  title: Text(
                    controller.taskList[index].toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  subtitle: Text(
                    "${controller.timerHourList[index]} : ${controller.timerMinuteList[index]}",
                    style: TextStyle(
                      color: Colors.blueGrey.shade800,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: GestureDetector(
              onTap: () {
                txtTask.text = "";
                txtDetail.text = "";
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Add TODO"),
                    content: contentMethod(
                      txtTask: txtTask,
                      txtDetail: txtDetail,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          controller.addTask(
                            task: txtTask.text,
                            detail: txtDetail.text,
                            hour: DateTime.now().hour.toString(),
                            minute: DateTime.now().minute.toString(),
                          );
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Save",
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                );
              },
              child: buttonMethod(),
            ),
          ),
        ],
      ),
    );
  }
}
