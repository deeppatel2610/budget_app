import 'package:adv_flutter_ch_3/Budget%20App/screens/home/component/slidable_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../home_page.dart';
import 'change_icon_for_category.dart';

Expanded showIncomeAndExpense() {
  return Expanded(
    child: Obx(
      () => ListView.builder(
        itemCount: controller.recordsList.length,
        itemBuilder: (context, index) => Card(
          color: Colors.blue.shade50,
          child: Slidable(
            endActionPane: slidableMethod(
              icon: Icons.delete,
              color: Colors.red,
              index: index,
              isDelete: true,
            ),
            startActionPane: slidableMethod(
              icon: Icons.edit,
              color: Colors.green,
              isDelete: false,
              index: index,
            ),
            child: ListTile(
              title: Text(
                controller.recordsList[index].notes.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  letterSpacing: .2,
                ),
              ),
              subtitle: Text(
                controller.recordsList[index].account.toString(),
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w500,
                  letterSpacing: .2,
                ),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    (controller.recordsList[index].isIncome == 0)
                        ? "- ${controller.recordsList[index].amount}"
                        : "+ ${controller.recordsList[index].amount}",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                      color: (controller.recordsList[index].isIncome == 0)
                          ? Colors.red
                          : Colors.green,
                    ),
                  ),
                  Text(
                    controller.recordsList[index].date.toString().split(" ")[0],
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: .2,
                    ),
                  )
                ],
              ),
              leading: ChangeIconForCategory(
                category: controller.recordsList[index].category.toString(),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
