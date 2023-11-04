import 'package:flutter/material.dart';

class SecondTransition extends StatelessWidget {
  String imgUrl;
  int index;

  SecondTransition({required this.imgUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('SecondTransition'),
          ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Hero(
              tag: "$index",
              child: Image.asset(
                imgUrl,
                fit: BoxFit.fill,
              ),
            ),
          )),
    );
  }
}
