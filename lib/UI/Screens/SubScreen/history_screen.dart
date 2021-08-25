import 'package:flutter/material.dart';
import 'package:flutter_app/Ui/components/home_header.dart';
import 'package:flutter_app/Ui/components/rate_order.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                header(size),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0
                  ),
                  child: Container(
                    child: Text(
                      "history",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.red[900],
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.4),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[100],
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey, width: 0.4),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: size.height / 10,
                                width: size.width / 8,
                                child: Image(
                                  image: AssetImage("assets/greeksalad.jpg"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Dindigul Thalappakatti", 
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Valipalayam, Tiruppur",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: size.width / 3,
                                alignment: Alignment.centerRight,                            
                                child: Text(
                                  "₹147.5",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0  
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.4)),
                            color: Colors.white54,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width / 5,
                                  decoration: BoxDecoration(
                                    color: Colors.green[50],
                                    borderRadius: BorderRadius.circular(6.0)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Delivered", style: TextStyle(color: Colors.green, fontSize: 14.0),)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "ITEMS",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[400],
                                    // fontWeight: FontWeight.w200
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "1 x Thalappakatti Chicken Briyani [bone]",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0, left: 8.0),
                                child: Text(
                                  "Ordered ON".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, bottom: 20.0),
                                child: Text(
                                  "20 Jul 2021 at 1:50 PM",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Rate order",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.red
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        rateOrder(size, "1"),
                                        rateOrder(size, "2"),
                                        rateOrder(size, "3"),
                                        rateOrder(size, "4"),
                                        rateOrder(size, "5"),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Repeat Order",
                                    style: TextStyle(
                                      fontSize:14.0,
                                      color: Colors.red
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
