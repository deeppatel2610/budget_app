import 'package:flutter_test/flutter_test.dart';
import 'package:adv_flutter_ch_3/main.dart';

void main() {
  testWidgets('Budget app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BudgetApp());
  });
}
