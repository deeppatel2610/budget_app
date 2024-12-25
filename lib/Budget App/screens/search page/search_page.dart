import 'package:adv_flutter_ch_3/Budget%20App/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/component/show_income_and_expense.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            controller.fetchData();
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: true,
        title: const Text(
          "Search Categories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            fontSize: 21,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                controller.filterBySearch(search: value);
              },
              controller: txtSearch,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.filterBySearch(search: txtSearch.text);
                  },
                  icon: const Icon(Icons.search),
                ),
                hintText: "Search",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            showIncomeAndExpense(),
          ],
        ),
      ),
    );
  }
}

var txtSearch = TextEditingController();
