import 'package:flutter/material.dart';

class ClippersPage extends StatefulWidget {
  const ClippersPage({super.key});

  @override
  State<ClippersPage> createState() => _ClippersPageState();
}

class _ClippersPageState extends State<ClippersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clipper'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Image.asset('assets/images/img_flower.jpg'),
            ),
            ClipOval(
              child: Image.asset(
                'assets/images/img_flower.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
