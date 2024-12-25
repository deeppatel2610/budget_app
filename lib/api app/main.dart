import 'package:adv_flutter_ch_3/api%20app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const PlaceholderApp());

class PlaceholderApp extends StatelessWidget {
  const PlaceholderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
