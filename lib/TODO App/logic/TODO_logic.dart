import 'package:get/get.dart';

class TodoLogic extends GetxController {
  RxList<String> taskList = <String>[].obs;
  RxList<String> detailList = <String>[].obs;
  RxList<String> timerHourList = <String>[].obs;
  RxList<String> timerMinuteList = <String>[].obs;

  void addTask({
    required String task,
    required String detail,
    required String hour,
    required String minute,
  }) {
    taskList.add(task);
    detailList.add(detail);
    timerHourList.add(hour);
    timerMinuteList.add(minute);
  }

  void deleteTask(int index) {
    taskList.removeAt(index);
    detailList.removeAt(index);
    timerHourList.removeAt(index);
    timerMinuteList.removeAt(index);
  }

  void editTask({
    required int index,
    required String task,
    required String detail,
    required String hour,
    required String minute,
  }) {
    taskList[index] = task;
    detailList[index] = detail;
    timerHourList[index] = hour;
    timerMinuteList[index] = minute;
  }
}
