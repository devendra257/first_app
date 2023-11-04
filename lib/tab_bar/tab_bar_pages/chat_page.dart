import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      body: const Center(
        child: Text(
          'Chats',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
