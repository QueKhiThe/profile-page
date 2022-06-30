import 'package:flutter/material.dart';

Widget statWidet(String title, String value) {
  return Expanded(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        value,
        style: const TextStyle(fontSize: 15),
      )
    ],
  ));
}
