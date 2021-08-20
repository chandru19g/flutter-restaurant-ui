import 'package:flutter/material.dart';
import 'package:flutter_app/components/menu_category.dart';
import 'package:flutter_app/components/menu_dish.dart';
import 'package:flutter_app/components/menu_header.dart';
import 'package:flutter_app/components/menu_options.dart';
import 'package:flutter_app/components/menu_section.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  void onPressed(TapDownDetails details, BuildContext context) async {
    Offset offset = details.globalPosition;

    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(offset.dx, offset.dy, 0, 0),
      items: [
        PopupMenuItem(child: Text("Todat's Exclusive Dish 1")),
        PopupMenuItem(child: Text("Recomended             23")),
        PopupMenuItem(child: Text("Zomato Special Combo   5")),
        PopupMenuItem(child: Text("Our Speciality         4")),
        PopupMenuItem(child: Text("Mini Meals             5")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          backgroundColor: Colors.white54,
          elevation: 0,
          // title: Text("The Masala Story", style: TextStyle(color: Colors.black),),
          actions: <Widget>[
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
              size: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(Icons.bookmark_add_outlined,
                  color: Colors.black, size: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child:
                  Icon(Icons.share_outlined, color: Colors.black, size: 20.0),
            )
          ],
        ),
        floatingActionButton: GestureDetector(
          onTapDown: (details) => onPressed(details, context),
          child: Container(
            height: size.height / 18,
            width: size.width / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.black,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 18.0,
                  ),
                ),
                Text(
                  "Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              menuHeader(size),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    menuOptions(size, Icons.bike_scooter_rounded, "MODE", "delivery", Colors.black),
                    menuOptions(size, Icons.timer_rounded, "TIME", "33mins", Colors.black),
                    menuOptions(size, Icons.local_offer_rounded, "OFFERS", "view all (3)", Colors.blue),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.bike_scooter_outlined, size: 15.0),
                        Text("\t\t ₹20 additional distance fee", style: TextStyle(fontSize: 13.0),),
                      ],
                    ),
                  ),
                ),
              ),
              menuSection(size),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  menuCategory(size, "veg"),
                  menuCategory(size, "egg"),
                  Container(
                    height: size.height / 20,
                    width: size.width / 3,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.red,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none, hintText: "Search"),
                          ) 
                        ),
                      ],
                    ),
                  )
                ],
              ),
              menuDish(size, "Recomended"),
              menuDish(size, "Soups"),
              menuDish(size, "Zomato Special Combo"),
              menuDish(size, "Mini Meals"),
              menuDish(size, "Our Speciality"),
            ],
          ),
        ),
      ),
    );
  }
}
