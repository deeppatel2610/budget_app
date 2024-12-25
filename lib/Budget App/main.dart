import 'package:adv_flutter_ch_3/Budget%20App/screens/bottom%20navigation%20bar/bottom_navigation_bar.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/flash%20screen/flash_screen.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/home/all%20categories%20page/all_categories_page.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/home/all%20categories%20page/show%20categories%20page/show_categories_page.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/search%20page/search_page.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/user%20input/user_input.dart';
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
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const FlashScreen(),
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
