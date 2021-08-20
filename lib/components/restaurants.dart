import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart';

Widget restaurantAvailable(Size size) {
  return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: restaurantList.length,
      itemBuilder: (context, index) {
        return itemBuilder(size, index, context);
      });
}

Widget itemBuilder(Size size, int index, BuildContext context) {
  return CupertinoButton(
    onPressed: () {
      Navigator.pushNamed(context, "menu_screen");
    },
    child: Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: size.height / 2.5,
        width: size.width / 1.1,
        child: Column(
          children: <Widget>[
            Container(
              height: size.height / 4,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(restaurantList[index].imageUrl),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: size.height / 12,
              width: size.width / 1.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    restaurantList[index].title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: size.height / 25,
                    width: size.width / 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "${restaurantList[index].rating} ★",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "${restaurantList[index].locations}",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.9),
                    ),
                  ),
                  Container(
                    child: Text(
                      "${restaurantList[index].price} for one",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.9),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
