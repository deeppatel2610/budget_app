import 'package:flutter/material.dart';

import '../../uitil/global.dart';

Column contentMethod({
  required var txtTask,
  required var txtDetail,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextField(
        decoration: InputDecoration(
          labelText: "Task",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade500,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade500,
              width: 1.5,
            ),
          ),
        ),
        controller: txtTask,
      ),
      const SizedBox(
        height: 10,
      ),
      TextField(
        controller: txtDetail,
        maxLines: 2,
        decoration: InputDecoration(
          labelText: "Detail",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade500,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade500,
              width: 1.5,
            ),
          ),
        ),
      )
    ],
  );
}
