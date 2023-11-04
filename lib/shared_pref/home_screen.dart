import 'dart:math';

import 'package:first_app/shared_pref/login_screen.dart';
import 'package:first_app/shared_pref/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int value = 0; //* ye value get karne ke liye..
  int count = 0; //* ye value ko hum increament karne ke le liye le rahe h..

  @override
  void initState() {
    super.initState();
    countShared();
  }

  void countShared() async {
    var pref = await SharedPreferences.getInstance();
    count = pref.getInt(value.toString()) ?? 0;
    count++;
    pref.setInt(value.toString(), count);

    print(count);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: count % 2 == 0
          ? Colors.primaries[Random().nextInt(Colors.primaries.length)]
          : Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Column(
            children: [
              Center(
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                count.toString(),
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () async {
                    //* If user is sucessfully logged in

                    var pref = await SharedPreferences.getInstance();

                    pref.setBool(SplashPage.KEY_IS_LOGGED_IN, false);

                    pref.setInt(value.toString(), 0);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text("Logout"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
