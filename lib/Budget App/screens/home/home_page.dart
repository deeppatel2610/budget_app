import 'package:adv_flutter_ch_3/Budget%20App/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'all categories page/all_categories_page.dart';
import 'component/filter_category_icon_method.dart';
import 'component/home_page_app_bar_method.dart';
import 'component/show_income_and_expense.dart';
import 'component/total_balance_show_method.dart';

/// todo: home controller
var controller = Get.put(HomeController());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homePageAppBarMethod(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            totalBalanceShowMethod(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: .2,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(const AllCategoriesPage(),
                        fullscreenDialog: true,
                        duration: const Duration(milliseconds: 600),
                        transition: Transition.rightToLeftWithFade);
                  },
                  child: SizedBox(
                    height: 20,
                    width: 55,
                    child: Text(
                      " See All",
                      style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 15,
                        letterSpacing: .2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            filterCategoryIconMethod(),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Transactions",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: .2,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            showIncomeAndExpense(),
          ],
        ),
      ),
    );
  }
}
