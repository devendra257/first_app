import 'package:flutter/material.dart';

class TextUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(131, 96, 125, 139),
          body: Center(
            child: Center(
              child: Text(
                'Hello World!!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5, // * letter spacing to one to one letter

                  wordSpacing:
                      10, // * word spacing is used to word spacing to one to one word..
                  // textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
