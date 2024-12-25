import 'package:flutter/material.dart';

Container incomeAndExpenseDecorationMethod({
  required String text,
  required IconData icon,
  required Color color,
  required String amount,
}) {
  return Container(
    height: 80,
    width: 180,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 2,
          spreadRadius: 1,
        )
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 35,
            color: Colors.green,
          ),
          // SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: .2,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.currency_rupee_sharp,
                    color: color,
                    size: 20,
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                      color: color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .2,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
