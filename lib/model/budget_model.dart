class BudgetModel {
  int? id, isIncome;
  double amount;
  String? date, category, account, notes;

  BudgetModel({
    required this.id,
    required this.isIncome,
    required this.amount,
    required this.category,
    required this.date,
    required this.account,
    required this.notes,
  });

  factory BudgetModel.fromMap(Map m1) {
    return BudgetModel(
      id: m1['id'],
      isIncome: m1['isIncome'],
      amount: (m1['amount'] as num?)?.toDouble() ?? 0.0,
      category: m1['category'],
      date: m1['date'],
      account: m1['account'],
      notes: m1['notes'],
    );
  }
}
