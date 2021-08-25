import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/greeksalad.jpg'),
                    height: 50,
                    width: 50,
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          child: Text(
                            "Grill House",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          child: Text(
                            "Thennampalyam",
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Chicken Special\n Shawarma",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width / 4.5,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.remove,
                                    size: 14.0,
                                  )),
                              Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.green),
                              ),
                              GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.add,
                                    size: 14.0,
                                    color: Colors.green,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "₹160",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.grey.shade300, width: 0.4)),
                    color: Colors.grey[50]),
                height: size.height / 16,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.format_list_bulleted_outlined,
                        size: 15.0,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Any restaurant request? We will try our best to convey",
                          style: TextStyle(fontSize: 12.0, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              height: size.height / 32,
              width: size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        "Tip your hunger saviour",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.info_outline_rounded,
                          size: 16.0,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Thank your delivery partner for helping you stay safe indoors. Support them through these tough times with a tip.",
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ),
                  amount(size),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              height: size.height / 32,
              width: size.width,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey.shade300, width: 0.6))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.7, color: Colors.grey)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(CupertinoIcons.home, size: 40.0, color: Colors.black54,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Deliver to Home",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Text(
                                    "Thirukumaran Nagar",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Text(
                                    "33 MINS",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "CHANGE",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.orange[700],
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  height: size.height / 9.5,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "₹202.00",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            "view detailed bill".toUpperCase(),
                            style: TextStyle(
                              color: Colors.blue[600],
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height / 9.5,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "proceed to pay".toUpperCase(), 
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget amount(Size size) {
  List options = [
    "₹20",
    "₹30",
    "₹50",
    "Other"
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
    child: Container(
      height: size.height / 14,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 1.0,
              borderRadius: BorderRadius.circular(6),
              child: Container(
                width: size.width / 5,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 0.6, color: Colors.grey.shade400),
                ),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(options[index]),
              ),
            ),
          );
        },
      ),
    ),
  );
}
