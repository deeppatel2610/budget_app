import 'package:flutter/material.dart';

Container listViewIconMethod({
  required IconData icon,
  required Color bgColor,
  required iconColor,
}) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Icon(
      icon,
      color: iconColor,
      size: 25,
    ),
  );
}
