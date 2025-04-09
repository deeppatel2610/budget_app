import 'dart:typed_data';

import 'package:adv_flutter_ch_3/Budget%20App/controller/DB%20helper/user_db_helper.dart';
import 'package:adv_flutter_ch_3/Budget%20App/model/user_model.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var txtPhone = TextEditingController();
  var txtEmail = TextEditingController();
  var txtName = TextEditingController();
  var txtPassword = TextEditingController();
  int isCheck = 0;
  RxBool isImage = true.obs;
  Uint8List? image;
  RxList<UserModel> userList = <UserModel>[].obs;

  List managementNameList = [
    "Currency sing",
    "Export records",
    "Backup & Restore",
    "Delete & Reset",
  ];
  List managementIconList = [
    Icons.currency_rupee_outlined,
    Icons.file_open_outlined,
    Icons.backup_outlined,
    Icons.delete_outline
  ];
  List generalNameList = [
    "Theme",
    "Like Money tracking",
    "Help",
    "Setting",
  ];
  List generalIconList = [
    Icons.light_mode_outlined,
    Icons.thumb_up_alt_outlined,
    Icons.help_outline,
    Icons.settings_outlined,
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    UserDbHelper.userDbHelper.database;
    fetchUserData();
  }

  void registerUser(
      {required String name,
      required String phone,
      required String email,
      required String password,
      required int isCheck}) {
    UserDbHelper.userDbHelper.insertUser(name, phone, email, password, isCheck);
  }

  void updateUser({
    required String name,
    required String phone,
    required String email,
    required Uint8List img,
  }) {
    UserDbHelper.userDbHelper.userUpdate(name, phone, email, img);
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    List data = await UserDbHelper.userDbHelper.fetchUserRecords();
    userList.value = data
        .map(
          (e) => UserModel.fromMap(e),
        )
        .toList();
  }
}
