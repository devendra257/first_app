import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: const Center(
        child: Text(
          'Calls',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
