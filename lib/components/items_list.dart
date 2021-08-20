import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart';

  Widget itemsList(Size size) {
    return Container(
      height: size.height / 3,
      width: size.width,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
          itemCount: foodItemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Container(
              height: size.height / 3,
              width: size.width / 5,
              child: Column(
                children: [
                  Container(
                    height: size.height / 10,
                    width: size.height / 10,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          foodItemList[index].imageUrl,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    foodItemList[index].name,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            );
          }),
    );
  }

