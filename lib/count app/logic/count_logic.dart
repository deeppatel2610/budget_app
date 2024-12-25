import 'package:get/get.dart';

class CountLogic extends GetxController {
  RxInt count = 0.obs;

  void addCount() {
    count++;
  }
}
