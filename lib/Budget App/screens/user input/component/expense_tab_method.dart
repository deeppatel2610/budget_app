import 'package:adv_flutter_ch_3/Budget%20App/screens/user%20input/component/table_calendar_method.dart';
import 'package:adv_flutter_ch_3/Budget%20App/screens/user%20input/component/text_method.dart';
import 'package:flutter/material.dart';

import '../user_input.dart';
import 'account_icon_method.dart';
import 'box_input_method.dart';

Tab tabMethod({required Widget category}) {
  return Tab(
    child: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                tableCalendarMethod(),
                const SizedBox(
                  height: 15,
                ),
                textMethod(text: "Amount"),
                const SizedBox(
                  height: 5,
                ),
                boxInputMethod(
                  isIcon: true,
                  text: "Ex.5000",
                  controller: controllerUserInput.txtAmount,
                  isNumberType: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                textMethod(text: "Account"),
                const SizedBox(
                  height: 5,
                ),
                accountIconMethod(),
                const SizedBox(
                  height: 15,
                ),
                textMethod(text: "Category"),
                const SizedBox(
                  height: 5,
                ),
                category,
                const SizedBox(
                  height: 15,
                ),
                textMethod(text: "Notes"),
                const SizedBox(
                  height: 5,
                ),
                boxInputMethod(
                  isIcon: false,
                  text: "Add notes",
                  controller: controllerUserInput.txtNotes,
                  isNumberType: false,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
