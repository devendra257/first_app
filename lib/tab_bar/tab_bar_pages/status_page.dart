import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: const Center(
        child: Text(
          'Status',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
