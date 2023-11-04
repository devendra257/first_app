import 'package:flutter/material.dart';

class Data_Transfer_2 extends StatefulWidget {
  String? name;
  String? mail;

  // Data_Transfer_2({required this.name, this.mail});
  Data_Transfer_2({this.name = 'default', this.mail});

  @override
  State<Data_Transfer_2> createState() => _Data_Transfer_2State();
}

class _Data_Transfer_2State extends State<Data_Transfer_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Received'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: widget.name == 'default'
                  ? Container()
                  : Text(
                      'Welcome to ${widget.name} and ${widget.mail}',
                      style: TextStyle(fontSize: 20),
                    ))
        ],
      ),
    );
  }
}
