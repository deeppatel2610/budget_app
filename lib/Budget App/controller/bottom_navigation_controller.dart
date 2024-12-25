import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/profile/profile_page.dart';

class BottomNavigationController extends GetxController {
  RxList<Widget> screenList = <Widget>[
    const HomePage(),
    const ProfilePage(),
  ].obs;
  RxInt screenIndex = 0.obs;

  void indexChange({required int index}) {
    screenIndex.value = index;
  }
}
