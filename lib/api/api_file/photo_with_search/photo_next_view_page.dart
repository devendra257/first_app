import 'package:flutter/material.dart';

class PhotoNextPage extends StatefulWidget {
  String title;
  String img;

  PhotoNextPage({required this.title, required this.img});

  @override
  State<PhotoNextPage> createState() => _PhotoNextPageState();
}

class _PhotoNextPageState extends State<PhotoNextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photograper :- ${widget.title}"),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Image.network(
          widget.img,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
