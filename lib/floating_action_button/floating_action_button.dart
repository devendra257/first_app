import 'package:flutter/material.dart';

class FloatingActionBottonPage extends StatefulWidget {
  const FloatingActionBottonPage({super.key});

  @override
  State<FloatingActionBottonPage> createState() =>
      _FloatingActionBottonPageState();
}

class _FloatingActionBottonPageState extends State<FloatingActionBottonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floation Action Botton'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          FloatingActionButton.small(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          FloatingActionButton.large(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          FloatingActionButton.extended(
            label: const Text('Add'),
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}
