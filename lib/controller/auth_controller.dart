import 'package:adv_flutter_ch_3/controller/db_helper/user_db_helper.dart';
import 'package:adv_flutter_ch_3/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var txtName = TextEditingController();
  var txtPassword = TextEditingController();
  var txtLoginPassword = TextEditingController();
  var txtChangeOldPassword = TextEditingController();
  var txtChangeNewPassword = TextEditingController();
  
  RxList<UserModel> userList = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserData();
  }

  Future<void> registerUser(String name, String password) async {
    await UserDbHelper.userDbHelper.insertUser(name, "", "", password, 0);
    await fetchUserData();
  }

  Future<void> changePassword(String newPassword) async {
    await UserDbHelper.userDbHelper.updatePassword(newPassword);
    await fetchUserData();
  }

  Future<void> fetchUserData() async {
    List data = await UserDbHelper.userDbHelper.fetchUserRecords();
    userList.value = data
        .map((e) => UserModel.fromMap(e))
        .toList();
  }
}
