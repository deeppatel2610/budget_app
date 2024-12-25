import 'package:flutter/material.dart';

Row userDetailsMethod({required IconData icon, required String text}) {
  return Row(
    children: [
      Icon(
        size: 25,
        icon,
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: .2,
        ),
      ),
    ],
  );
}
