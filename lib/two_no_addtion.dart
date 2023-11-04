import 'package:flutter/material.dart';

class Addition extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AdditionState();
  }
}

class AdditionState extends State<Addition> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var mResult = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Addition'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: no1Controller,
              decoration: const InputDecoration(
                label: Text('Number 1'),
                hintText: 'Enter No 1',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: no2Controller,
              decoration: const InputDecoration(
                label: Text('Number 2'),
                hintText: 'Enter No 2',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                var no1 = int.parse(no1Controller.text.toString());
                var no2 = int.parse(no2Controller.text.toString());

                mResult = no1 + no2;

                setState(() {});

                print('Sum : $mResult');
              },
              label: const Text('Add'),
              icon: const Icon(Icons.add),
            ),
            Text(
              '$mResult',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
