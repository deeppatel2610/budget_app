import 'package:flutter/material.dart';

Align textMethod({required String text}) {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        letterSpacing: .5,
        fontSize: 17,
      ),
    ),
  );
}
