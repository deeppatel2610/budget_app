import 'package:adv_flutter_ch_3/screens/auth/login_page.dart';
import 'package:adv_flutter_ch_3/screens/auth/sign_up_page.dart';
import 'package:adv_flutter_ch_3/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:adv_flutter_ch_3/screens/flash_screen/flash_screen.dart';
import 'package:adv_flutter_ch_3/screens/home/all_categories_page/all_categories_page.dart';
import 'package:adv_flutter_ch_3/screens/home/all_categories_page/show_categories_page/show_categories_page.dart';
import 'package:adv_flutter_ch_3/screens/search_page/search_page.dart';
import 'package:adv_flutter_ch_3/screens/user_input/user_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BudgetApp());
}

class BudgetApp extends StatelessWidget {
  const BudgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Budget App",
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const FlashScreen(),
        ),
        GetPage(
          name: '/SignUpScreen',
          page: () => const SignUpScreen(),
        ),
        GetPage(
          name: '/LoginPage',
          page: () => const LoginPage(),
        ),

        GetPage(
          name: '/BottomNavigationBarPage',
          page: () => const BottomNavigationBarPage(),
        ),
        GetPage(
          name: '/userInput',
          page: () => const UserInput(
            isSave: true,
            index: 0,
          ),
        ),
        GetPage(
          name: '/categoriesPage',
          page: () => const AllCategoriesPage(),
        ),
        GetPage(
          name: '/ShowCategoriesPage',
          page: () => const ShowCategoriesPage(),
        ),
        GetPage(
          name: '/SearchPage',
          page: () => const SearchPage(),
        )
      ],
    );
  }
}
