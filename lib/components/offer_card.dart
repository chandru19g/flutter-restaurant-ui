import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget offerCard(Size size) {
  return CarouselSlider(
      items: [
        Container(      
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(226, 56, 70, 1)
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: size.height / 14,
                width: size.width / 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                     image: NetworkImage("https://www.pikpng.com/pngl/m/327-3271979_half-a-pizza-transparent-background-clipart.png"),
                   )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Container(
                  width: size.width / 1.25,
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width / 1.25,
                  child: Text(
                    "GET 50% OFF \nON FIRST ORDER",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: size.width / 1.25,
                  child: Text(
                    "Order Now >",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      options: CarouselOptions(
        // height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 900),
        viewportFraction: 0.8,
      ));
}
