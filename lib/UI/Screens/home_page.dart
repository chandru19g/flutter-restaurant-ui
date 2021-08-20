import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/UI/Screens/SubScreen/cart_screen.dart';
import 'package:flutter_app/UI/Screens/SubScreen/history_screen.dart';
import 'package:flutter_app/UI/Screens/SubScreen/order_screen.dart';
import 'package:flutter_app/UI/Screens/SubScreen/profile_screen.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> screens = [
    OrderScreen(),
    HistoryScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey,
    ));


    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[500],
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: (val) {
            setState(() {
              currentIndex = val;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: "Order"
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history_outlined,
              ),
              label: "History"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Profile"
            )
          ],
        ),
      ),
    );
  }
}
