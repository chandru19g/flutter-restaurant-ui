import 'package:flutter/material.dart';

Widget menuHeader(Size size) {
  return Container(
    height: size.height / 7,
    width: size.width,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "The Masala Story",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "North India",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600]
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 70,
              ),
              Row(
                  children: [
                    SizedBox(
                      width: size.width / 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.timer),
                    ),
                    Text("37 Mins"),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.location_on),
                    ),
                    Text("Live Tracking")
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: size.height / 3.5,
          width: size.width / 3,
          alignment: Alignment.topRight,
          child: Container(
            height: size.height / 15,
            width: size.width / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10)
              ),
              color: Colors.green[800]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "3.9 ★",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  "Delivery",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
