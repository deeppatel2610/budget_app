import 'package:flutter/material.dart';

import '../profile_page.dart';

List<Widget> profileDecoration({
  required List nameList,
  required List iconList,
}) {
  return List.generate(
    nameList.length,
    (index) => ListTile(
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      leading: Icon(
        iconList[index],
      ),
      title: Text(
        nameList[index],
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          letterSpacing: .2,
          fontSize: 15,
        ),
      ),
    ),
  );
}
