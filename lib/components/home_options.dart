import 'package:flutter/material.dart';


Widget optionsAvailable(Size size, List options) {
  return Container(
    height: size.height / 15,
    width: size.width,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: options.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: size.height / 16,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: Colors.grey
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Text(options[index]),
          ),
        );
      },
    ),
  );
}