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
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: Icon(Icons.remove, size: 14.0, )
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.green
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(Icons.add, size: 14.0,color: Colors.green, )
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("₹160", style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500
                        ),),
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
                  border: Border(top: BorderSide(color: Colors.grey.shade300, width: 0.4)),
                  color: Colors.grey[50]
                ),
                height: size.height / 16,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.format_list_bulleted_outlined, size: 15.0, color: Colors.grey,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Any restaurant request? We will try our best to convey",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey
                          ),
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
          ],
        ),
      ),
    );
  }
}
