import 'package:adv_flutter_ch_3/controller/auth_controller.dart';
import 'package:adv_flutter_ch_3/screens/auth/component/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    Text(
                      'Welcome to Budget App',
                      style: GoogleFonts.poppins(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'One-time setup: Choose your name and password to get started.',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),

                    // Name input
                    CustomTextField(
                      icon: Icons.person_outline,
                      hintText: "Full Name",
                      controller: authController.txtName,
                    ),
                    const SizedBox(height: 16),

                    // Password input
                    CustomTextField(
                      icon: Icons.lock_outline,
                      hintText: "Choose Password",
                      obscureText: true,
                      controller: authController.txtPassword,
                    ),
                    const SizedBox(height: 30),

                    // Setup button
                    ElevatedButton(
                      onPressed: () async {
                        final name = authController.txtName.text.trim();
                        final password = authController.txtPassword.text.trim();
                        
                        if (name.isNotEmpty && password.isNotEmpty) {
                          await authController.registerUser(name, password);
                          Get.offAllNamed("/BottomNavigationBarPage");
                        } else {
                          Get.snackbar(
                            'Missing Fields',
                            'Please fill in both name and password.',
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
                        'Set Up Account',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
