import 'package:flutter/material.dart';
import 'package:flutter_app/Ui/components/dish_list.dart';

Widget menuDish(Size size, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
    child: ExpansionTile(
      textColor: Colors.black,
      iconColor: Colors.black,
      collapsedTextColor: Colors.black,
      collapsedIconColor: Colors.black,
      children: <Widget>[
        dishList(size, "Family Bucket Chicken Briyani \n[4-5 Pax]", "In Briyani Buckets (Super Savers)", 1409, "Served with 3 boiled egg. 1 coke, raita &\n gravy"),
        dishList(size, "Chicken Briyani Jumbo [2-3 Pax]", "In Briyani Buckets (Super Savers)", 649, "Served with 3 boiled egg. 1 coke, raita &\n gravy"),
        dishList(size, "Chicken Briyani Jumbo [2-3 Pax]", "In Briyani Buckets (Super Savers)", 649, "Served with 3 boiled egg. 1 coke, raita &\n gravy"),
        dishList(size, "Chicken Briyani Jumbo [2-3 Pax]", "In Briyani Buckets (Super Savers)", 649, "Served with 3 boiled egg. 1 coke, raita &\n gravy"),
        dishList(size, "Chicken Briyani Jumbo [2-3 Pax]", "In Briyani Buckets (Super Savers)", 649, "Served with 3 boiled egg. 1 coke, raita &\n gravy"),
      ],
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(title, 
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600
              ),
            ),
          ) 
        ],
      )
    ),
  );
}
