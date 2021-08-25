import 'package:flutter/material.dart';

Widget rateOrder(Size size, String rate) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.4),
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.white54),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          "$rate★",
          style: TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
      ),
    ),
  );
}
