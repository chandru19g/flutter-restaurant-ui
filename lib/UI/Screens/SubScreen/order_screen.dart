import 'package:flutter/material.dart';
import 'package:flutter_app/Ui/components/home_header.dart';
import 'package:flutter_app/Ui/components/home_options.dart';
import 'package:flutter_app/Ui/components/items_list.dart';
import 'package:flutter_app/Ui/components/offer_card.dart';
import 'package:flutter_app/Ui/components/restaurants.dart';
import 'package:flutter_app/Ui/components/searchbar.dart';

class OrderScreen extends StatefulWidget {
  OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<String> options = [
    "Pro",
    "Rating: 4.0+",
    "Max Saftey",
    "Fastest Delivery",
    "Offers",
    "TakeAway",
    "Popular"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                header(size),
                searchBar( context, size),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: optionsAvailable(size, options),
                ),
                offerCard(size),
                SizedBox(
                  height: size.height / 35,
                ),
                Container(
                  width: size.width / 1.1,
                  child: Text(
                    "Eat what make you happy",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 35,
                ),
                itemsList(size),
                Container(
                  width: size.width / 1.1,
                  child: Text(
                    "877 restaurants around you",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                restaurantAvailable(size)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
