import 'package:flutter/material.dart';

class DetailsPageHero extends StatelessWidget {
  String imgUrl;
  int index;

  DetailsPageHero({required this.imgUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
