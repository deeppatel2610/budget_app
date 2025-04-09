import 'package:adv_flutter_ch_3/Budget%20App/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bottom navigation bar/bottom_navigation_bar.dart';
import 'component/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6F4FF), // Light blue background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFB3E0FF), // Slightly darker blue
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0055CC),
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: profileController.txtEmail,
                  icon: Icons.email,
                  hintText: 'Email',
                ),
                const SizedBox(height: 12),
                CustomTextField(
                  controller: profileController.txtPassword,
                  icon: Icons.lock,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      await profileController.fetchUserData();
                      if (profileController.txtEmail.text ==
                              profileController.userList[0].email &&
                          profileController.txtPassword.text ==
                              profileController.userList[0].password) {
                        Get.offAll(const BottomNavigationBarPage(),
                            transition: Transition.fadeIn,
                            duration: const Duration(milliseconds: 800));
                      } else {
                        Get.snackbar(
                          'Incorrect',
                          'Email and Password Incorrect !',
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('Login',
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
