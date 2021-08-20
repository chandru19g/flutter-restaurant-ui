import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget header(Size size) {
  return Container(
    height: size.height / 10,
    width: size.width,
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.location_on_rounded,
            color: Colors.pink[400],
          ),
        ),
        Text(
          "Add Your Location Here",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: size.width / 5.5,
        ),
        IconButton(
            onPressed: () {
              Get.toNamed("/profile_screen");
            },
            icon: Icon(
              Icons.account_circle,
              color: Colors.pink[200],
            ))
      ],
    ),
  );
}
