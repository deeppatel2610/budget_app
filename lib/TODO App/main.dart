import 'package:adv_flutter_ch_3/TODO%20App/screens/TODO_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const TODOApp());

class TODOApp extends StatelessWidget {
  const TODOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: TodoPage(),
    );
  }
}
