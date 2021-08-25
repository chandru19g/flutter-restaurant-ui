import 'package:flutter/material.dart';

Widget searchBar(BuildContext context, Size size) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, "search_screen");
    },
    child: Container(
      height: size.height / 15,
      width: size.width / 1.1,
      decoration: BoxDecoration(
          border: Border.all(width: 1.2, color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: size.width / 40,
          ),
          Icon(
            Icons.search,
            color: Colors.red,
          ),
          SizedBox(
            width: size.width / 20,
          ),
          Expanded(
              child: Container(
            // decoration: BoxDecoration(border: Border.all(width: 0)),
            child: Text(
              "Restaurant name, cuisine, or a dish ...",
              style: TextStyle(color: Colors.grey),
            ),
          )),
        ],
      ),
    ),
  );
}
