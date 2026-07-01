import 'package:adv_flutter_ch_3/controller/auth_controller.dart';
import 'package:adv_flutter_ch_3/screens/auth/component/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());

    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 20),
                    Obx(() {
                      final userName = authController.userList.isNotEmpty
                          ? authController.userList[0].name
                          : 'User';
                      return Text(
                        'Welcome Back, $userName',
                        style: GoogleFonts.poppins(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      );
                    }),
                    const SizedBox(height: 8),
                    Text(
                      'Please enter your password to unlock the app.',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),

                    // Password input
                    CustomTextField(
                      icon: Icons.lock_outline,
                      hintText: "Password",
                      obscureText: true,
                      controller: authController.txtLoginPassword,
                    ),
                    const SizedBox(height: 30),

                    // Verify/Unlock button
                    ElevatedButton(
                      onPressed: () async {
                        final inputPassword = authController.txtLoginPassword.text.trim();
                        await authController.fetchUserData();

                        if (authController.userList.isNotEmpty) {
                          final storedPassword = authController.userList[0].password;
                          if (inputPassword == storedPassword) {
                            authController.txtLoginPassword.clear();
                            Get.offAllNamed("/BottomNavigationBarPage");
                          } else {
                            Get.snackbar(
                              'Incorrect Password',
                              'The password you entered is incorrect. Please try again.',
                              backgroundColor: Colors.redAccent,
                              colorText: Colors.white,
                            );
                          }
                        } else {
                          Get.snackbar(
                            'Error',
                            'No registered user found. Please restart the app.',
                            backgroundColor: Colors.redAccent,
                            colorText: Colors.white,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 2,
                      ),
                      child: Text(
                        'Unlock App',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        authController.txtChangeOldPassword.clear();
                        authController.txtChangeNewPassword.clear();
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            title: Text(
                              'Change Password',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                              ),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomTextField(
                                  icon: Icons.lock_open_outlined,
                                  hintText: "Current Password",
                                  obscureText: true,
                                  controller: authController.txtChangeOldPassword,
                                ),
                                const SizedBox(height: 12),
                                CustomTextField(
                                  icon: Icons.lock_outline,
                                  hintText: "New Password",
                                  obscureText: true,
                                  controller: authController.txtChangeNewPassword,
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Get.back(),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  final current = authController.txtChangeOldPassword.text.trim();
                                  final newPass = authController.txtChangeNewPassword.text.trim();
                                  
                                  if (current.isEmpty || newPass.isEmpty) {
                                    Get.snackbar(
                                      'Error',
                                      'Please fill in both fields.',
                                      backgroundColor: Colors.redAccent,
                                      colorText: Colors.white,
                                    );
                                    return;
                                  }
                                  
                                  if (current == authController.userList[0].password) {
                                    await authController.changePassword(newPass);
                                    Get.back();
                                    Get.snackbar(
                                      'Success',
                                      'Password updated successfully!',
                                      backgroundColor: Colors.green,
                                      colorText: Colors.white,
                                    );
                                  } else {
                                    Get.snackbar(
                                      'Incorrect Password',
                                      'The current password you entered is incorrect.',
                                      backgroundColor: Colors.redAccent,
                                      colorText: Colors.white,
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text('Update', style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Text(
                        'Change Password',
                        style: GoogleFonts.poppins(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
