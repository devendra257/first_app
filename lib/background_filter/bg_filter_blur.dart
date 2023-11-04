import 'dart:ui';

import 'package:flutter/material.dart';

class BGBlur extends StatefulWidget {
  const BGBlur({super.key});

  @override
  State<BGBlur> createState() => _BGBlurState();
}

class _BGBlurState extends State<BGBlur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Backgraound Image'),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/img_ballon.png'),
          Positioned(
              bottom: 0,
              left: 100,
              child: Image.asset('assets/images/img_login.png')),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: Container(),
          )
        ],
      ),
    );
  }
}
