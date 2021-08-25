import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.center,
            height: size.height / 15,
            width: size.width / 1.1,
            decoration: BoxDecoration(
                border: Border.all(width: 1.2, color: Colors.grey),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: size.width / 40,
                ),
                Icon(
                  Icons.search,
                  color: Colors.red,
                ),
                SizedBox(
                  width: size.width / 20,
                ),
                Expanded(
                    child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Restaurant name, cuisine, or a dish ..."),
                )),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 0.2))),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Recent Searches",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3),
                ),
                Text(
                  "Show More".toUpperCase(),
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3),
                )
              ],
            ),
          ),
        ),
        searchList(size, "Grill House"),
        searchList(size, "Dindigul Thalappakatti"),
      ],
    )));
  }
}

Widget searchList(Size size, String title) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.search_outlined, color: Colors.black26, size: 30.0,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title, 
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: -1,
                    color: Colors.black26
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey, width: 0.2))
              ),
            ),
          ),
        ]
      ),
    ),
  );
}
