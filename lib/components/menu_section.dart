import 'package:flutter/material.dart';

Widget menuSection(Size size) {
  return Container(
      height: size.height / 15,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(
          width: 0.3,
          color: Colors.grey.shade400,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width / 17,
          ),
          Text(
            "Full Menu",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: size.width / 7,
          ),
        ],
      ),
    );
}