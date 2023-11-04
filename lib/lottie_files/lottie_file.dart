import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lottiefiles extends StatefulWidget {
  const Lottiefiles({super.key});

  @override
  State<Lottiefiles> createState() => _LottiefilesState();
}

class _LottiefilesState extends State<Lottiefiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LottieFiles'),
      ),
      body: Lottie.asset(
        'assets/lottiefile/box_animation.json',
        width: 200,
        height: 200,
        fit: BoxFit.fill,
      ),
    );
  }
}
