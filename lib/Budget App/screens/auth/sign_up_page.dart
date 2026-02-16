import 'package:adv_flutter_ch_3/Budget%20App/screens/auth/component/custom_text_field.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile/profile_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Card(
              color: Colors.blue.shade100,
              child: Container(
                width: double.infinity,
                height: 500,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        'Create Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),

                      // Name
                      CustomTextField(
                        icon: Icons.person,
                        hintText: "Full Name",
                        controller: profileController.txtName,
                      ),
                      const SizedBox(height: 20),

                      // Email
                      CustomTextField(
                        icon: Icons.email,
                        hintText: "Email",
                        controller: profileController.txtEmail,
                      ),
                      const SizedBox(height: 20),

                      // Number
                      CustomTextField(
                        icon: Icons.phone,
                        hintText: "Phone",
                        controller: profileController.txtPhone,
                      ),
                      const SizedBox(height: 20),

                      //Password
                      CustomTextField(
                        icon: Icons.lock_outline,
                        hintText: "Password",
                        obscureText: true,
                        controller: profileController.txtPassword,
                      ),
                      const SizedBox(height: 30),

                      // Sign Up Button
                      ElevatedButton(
                        onPressed: () async {
                          // Handle sign-up logic here
                          profileController.registerUser(
                            name: profileController.txtName.text,
                            phone: profileController.txtPhone.text,
                            email: profileController.txtEmail.text,
                            password: profileController.txtPassword.text,
                            isCheck: 1,
                          );
                          if (profileController.txtName.text != "" &&
                              profileController.txtPhone.text != "" &&
                              profileController.txtPassword.text != "" &&
                              profileController.txtEmail.text != "") {
                            await profileController.fetchUserData();
                            if (profileController.userList[0].isCheck == 1) {
                              Get.offAll(const LoginPage(),
                                  transition: Transition.fadeIn,
                                  duration: const Duration(milliseconds: 800));
                            }
                          } else {
                            Get.snackbar(
                              'Input all!',
                              'Enter All Value...',
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        child: const Text('Sign Up',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
