import 'package:flutter/material.dart';

TextField inputMethod({required controller, required String text}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      hintText: text,
      hintStyle: const TextStyle(color: Colors.grey),
      prefixIcon: const Icon(Icons.phone_iphone_rounded),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black38, width: 1.5),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black38, width: 1),
      ),
    ),
  );
}
