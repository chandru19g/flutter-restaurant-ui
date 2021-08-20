import 'dart:ffi';

import 'package:flutter/material.dart';

Widget dishList(Size size, String title, String subTitle, int price, String description) {
  return Container(
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                softWrap: true,
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                softWrap: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "₹$price",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                  softWrap: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600]
                  ),
                  softWrap: true,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: size.width / 5,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.pink, width: 0.5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ADD",
                      style: TextStyle(color: Colors.pink[500]),
                    ),
                    Icon(
                      Icons.add,
                      size: 15,
                      color: Colors.pink[500],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
