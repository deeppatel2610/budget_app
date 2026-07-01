import 'package:flutter/material.dart';

TextField boxInputMethod({
  required bool isIcon,
  required String text,
  required controller,
  required bool isNumberType,
}) {
  return TextField(
    keyboardType: (isNumberType) ? TextInputType.number : TextInputType.name,
    controller: controller,
    decoration: InputDecoration(
      hintText: text,
      prefixIcon: (isIcon) ? const Icon(Icons.currency_rupee) : null,
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 1.5,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 1,
        ),
      ),
    ),
  );
}
