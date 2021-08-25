import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/UI/Screens/Authentication/login_screen.dart';
import 'package:flutter_app/UI/Screens/Authentication/otp_screen.dart';
import 'package:flutter_app/UI/Screens/SubScreen/menu_screen.dart';
import 'package:flutter_app/UI/Screens/SubScreen/profile_screen.dart';
import 'package:flutter_app/UI/Screens/SubScreen/search_screeen.dart';
import 'package:flutter_app/UI/Screens/home_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static var route = [
    GetPage(name: '/', page: () => LoginScreen()),
    GetPage(name: '/otp_screen', page: () => OtpScreen()),
    GetPage(name: '/home_page', page: () => HomePage()),
    GetPage(name: '/profile_screen', page: () => ProfileScreen()),
    GetPage(name: '/menu_screen', page: () => MenuScreen()),
    GetPage(name: '/search_screen', page: () => SearchScreen()),
  ];

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      title: "E-Commerce Application",
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark
        )
      ),
      home: LoginScreen(),
      getPages: route,
      initialRoute: "/",
    );
  }
}
