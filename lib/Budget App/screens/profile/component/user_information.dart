import 'package:adv_flutter_ch_3/Budget%20App/screens/profile/component/user_details_method.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container userInformation() {
  return Container(
    height: 100,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black26),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: Obx(
            () => userDetailsMethod(
              icon: Icons.phone_iphone_outlined,
              text: profileController.userList[0].phone!,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Obx(
            () => userDetailsMethod(
              icon: Icons.email_outlined,
              text: profileController.userList[0].email!,
            ),
          ),
        )
      ],
    ),
  );
}
