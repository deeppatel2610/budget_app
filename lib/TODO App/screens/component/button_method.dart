import 'package:flutter/material.dart';

Container buttonMethod() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blue.shade300,
      shape: BoxShape.circle,
      boxShadow: const [
        BoxShadow(
          color: Colors.black38,
          blurRadius: 3,
          spreadRadius: 2,
        )
      ],
    ),
    height: 80,
    width: 80,
    child: const Icon(
      Icons.add,
      size: 30,
      color: Colors.white,
    ),
  );
}
