import 'package:flutter/material.dart';

Widget menuOptions(Size size, IconData iconname, String title, String text, Color colors) {
  return Row(
    children: [
      Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1.0, color: Colors.grey.shade300)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              iconname,
              size: 20.0,
              color: colors,
            ),
          )),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          children: <Widget>[
            Text(title, style: TextStyle(letterSpacing: 2.0, fontSize: 10.0)),
            Text(
              text,
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
            )
          ],
        ),
      )
    ],
  );
}
