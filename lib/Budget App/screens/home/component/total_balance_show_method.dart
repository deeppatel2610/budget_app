import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'income_and_expense_decoration_method.dart';

Container totalBalanceShowMethod() {
  return Container(
    height: 180,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Total Balance",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.currency_rupee_sharp,
                color: Colors.white,
                size: 35,
              ),
              Obx(
                () => Text(
                  controller.totalBalance.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    letterSpacing: .2,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                () => incomeAndExpenseDecorationMethod(
                  text: " Income",
                  amount: controller.income.toString(),
                  color: Colors.green,
                  icon: Icons.arrow_downward_rounded,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Obx(
                () => incomeAndExpenseDecorationMethod(
                  icon: Icons.arrow_upward_rounded,
                  color: Colors.red,
                  text: " Expense",
                  amount: controller.expense.toString(),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
