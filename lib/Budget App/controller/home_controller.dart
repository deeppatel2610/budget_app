import 'package:adv_flutter_ch_3/Budget%20App/controller/DB%20helper/db_helper.dart';
import 'package:adv_flutter_ch_3/Budget%20App/model/budget_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<BudgetModel> recordsList = <BudgetModel>[].obs;
  RxDouble income = 0.0.obs;
  RxDouble expense = 0.0.obs;
  RxDouble totalBalance = 0.0.obs;

  @override
  void onInit() {
    // todo: implement onInit
    DbHelper.dbHelper.database;
    fetchData();
    super.onInit();
  }

  /// todo: map to list method
  List<BudgetModel> mapToList(List l1) {
    return l1
        .map(
          (e) => BudgetModel.fromMap(e),
        )
        .toList();
  }

  /// todo: fetch data method
  Future<void> fetchData() async {
    List fetchList = await DbHelper.dbHelper.fetchRecords();
    recordsList.value = mapToList(fetchList);
    calculateBalance();
  }

  /// todo: insert data method
  Future<void> insertData({
    required double amount,
    required String category,
    required String time,
    required int isIncome,
    required String account,
    required String notes,
  }) async {
    await DbHelper.dbHelper.insertRecord(
      amount,
      category,
      time,
      isIncome,
      account,
      notes,
    );
    fetchData();
  }

  /// todo: delete data method
  void deleteData({required int id}) {
    DbHelper.dbHelper.deleteRecord(id);
    fetchData();
  }

  /// todo: update data method
  Future<void> updateData({
    required int id,
    required double amount,
    required String category,
    required int isIncome,
    required String date,
    required String account,
    required String notes,
  }) async {
    await DbHelper.dbHelper.updateRecord(
      id,
      amount,
      category,
      isIncome,
      date,
      account,
      notes,
    );
    await fetchData();
  }

  /// todo: filter By Search
  Future<void> filterBySearch({required String search}) async {
    List records = await DbHelper.dbHelper.filterSearch(search);
    recordsList.value = mapToList(records);
  }

  /// todo: filter By Category
  Future<void> filterByCategory({required String category}) async {
    List records = await DbHelper.dbHelper.filterCategory(category);
    recordsList.value = mapToList(records);
  }

  /// todo: calculate balance
  void calculateBalance() {
    // print("deep patel");
    income.value = 0.0;
    expense.value = 0.0;
    totalBalance.value = 0.0;
    for (var record in recordsList) {
      if (record.isIncome == 1) {
        income.value += record.amount;
      } else {
        expense.value += record.amount;
      }
    }
    totalBalance.value = income.value - expense.value;
  }
}
