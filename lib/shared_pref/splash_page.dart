import 'dart:async';

import 'package:first_app/shared_pref/home_screen.dart';
import 'package:first_app/shared_pref/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  static String KEY_IS_LOGGED_IN = "isLoggedin";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () async {
      var pref = await SharedPreferences.getInstance();

      var check = pref.getBool(SplashPage.KEY_IS_LOGGED_IN
              //* Static value ko class ke name se call karte hai..
              ) ??
          false;
      if (check) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Icon(
          Icons.flight,
          size: 200,
        ),
      ),
    );
  }
}
