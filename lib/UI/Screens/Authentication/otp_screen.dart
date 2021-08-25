import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatefulWidget {
  static String routeName = 'OtpScreen';

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();

  late FocusNode _node2;

  late FocusNode _node3;

  late FocusNode _node4;

  @override
  void initState() {
    super.initState();
    _node2 = FocusNode();
    _node3 = FocusNode();
    _node4 = FocusNode();
  }

  @override
  void dispose() {
    _node2.dispose();
    _node3.dispose();
    _node4.dispose();
    super.dispose();
  }

  void next({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  _buildError() {
    return ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Invalid')));
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20.0 / 3,
              top: 20.0,
              left: 20.0 / 3,
              right: 20.0 / 3,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'please enter 4 digit code\nwe have sent to your number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF8B8B8D),
                      letterSpacing: 1.0,
                      wordSpacing: 1.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.all(20.0),
                            width: 40.0,
                            height: 40.0,
                            child: TextFormField(
                              autofocus:
                                  true,
                              inputFormatters: [
                                new LengthLimitingTextInputFormatter(
                                    1),
                              ],
                              decoration: InputDecoration(),
                              textInputAction: TextInputAction.next,
                              keyboardAppearance: Brightness.light,
                              keyboardType: TextInputType.phone,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                next(value: value, focusNode: _node2);
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return _buildError();
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(20.0),
                            width: 40.0,
                            height: 40.0,
                            child: TextFormField(
                              focusNode: _node2,
                              inputFormatters: [
                                new LengthLimitingTextInputFormatter(
                                    1),
                              ],
                              decoration: InputDecoration(),
                              textInputAction: TextInputAction.next,
                              keyboardAppearance: Brightness.light,
                              keyboardType: TextInputType.phone,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                next(value: value, focusNode: _node3);
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return _buildError();
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(20.0),
                            width: 40.0,
                            height: 40.0,
                            child: TextFormField(
                              focusNode: _node3,
                              inputFormatters: [
                                new LengthLimitingTextInputFormatter(
                                    1),
                              ],
                              decoration: InputDecoration(),
                              textInputAction: TextInputAction.next,
                              keyboardAppearance: Brightness.light,
                              keyboardType: TextInputType.phone,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                next(value: value, focusNode: _node4);
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return _buildError();
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(20.0),
                            width: 40.0,
                            height: 40.0,
                            child: TextFormField(
                              focusNode: _node4,
                              inputFormatters: [
                                new LengthLimitingTextInputFormatter(
                                    1),
                              ],
                              decoration: InputDecoration(),
                              textInputAction: TextInputAction.next,
                              keyboardAppearance: Brightness.light,
                              keyboardType: TextInputType.phone,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                _node4.unfocus();
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return _buildError();
                                }
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Code expires in: ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF8B8B8D)),
                    ),
                    TweenAnimationBuilder(
                        tween: IntTween(begin: 60, end: 0),
                        duration: Duration(seconds: 60),
                        builder: (context, int value, child) => Text(
                              "${value.toInt()}",
                              style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFFd70165)),
                            )),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(
                          context, 
                          "/home_page",
                          (route) => false
                        );
                      }
                  },
                  child: Container(
                    height: size.height / 14,
                    width: size.width / 1.12,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Verify Me",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
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
