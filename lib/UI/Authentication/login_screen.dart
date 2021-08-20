import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.red[900],
    ));

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(226, 56, 70, 1),
            Color.fromRGBO(217, 39, 79, 1),
          ])),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  height: size.height / 3.5,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/log.jpg"), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: size.height / 40),
                field(size),
                SizedBox(height: size.height / 40),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/otp_screen",
                    );
                  },
                  child: Container(
                    height: size.height / 14,
                    width: size.width / 1.12,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Send OTP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  height: size.height / 8,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 1,
                        width: size.width / 3,
                        color: Color.fromRGBO(250, 79, 95, 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "OR",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: size.width / 3,
                        color: Color.fromRGBO(250, 79, 95, 1),
                      ),
                    ],
                  ),
                ),
                loginWithEmailButton(size),
                SizedBox(
                  height: size.height / 30,
                ),
                Container(
                  height: size.height / 15,
                  width: size.width / 1.12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customButton(size, "Facebook", "assets/facebook.png"),
                      customButton(size, "Google", "assets/google.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height / 25,
                ),
                Text(
                  "By continuing, you agree to our",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Terms of Services Privacy Policy Content Policy",
                    style: TextStyle(color: Colors.white, fontSize: 12),
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

Widget customButton(Size size, String title, String path) {
  return Container(
    height: size.height / 14,
    width: size.width / 2.3,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: size.height / 25,
          width: size.width / 15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(path),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    ),
  );
}

Widget loginWithEmailButton(Size size) {
  return Container(
    height: size.height / 14,
    width: size.width / 1.12,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 14,
        ),
        Container(
          height: size.height / 25,
          width: size.width / 15,
          child: Icon(Icons.mail),
        ),
        SizedBox(width: size.width / 8),
        Text(
          "Continue with Email",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

Widget field(Size size) {
  return Container(
    height: size.height / 14,
    width: size.width / 1.12,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: <Widget>[
        SizedBox(width: size.width / 20),
        Container(
          height: size.height / 30,
          width: size.width / 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/flag.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          "\t\t+91",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(Icons.arrow_drop_down),
        Form(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Container(
              height: size.height / 14,
              width: size.width / 2,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Phone Number"
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
