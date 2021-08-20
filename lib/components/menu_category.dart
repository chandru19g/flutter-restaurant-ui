import 'package:flutter/material.dart';

Widget menuCategory(Size size, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: size.height / 20,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    ),
  );
}
