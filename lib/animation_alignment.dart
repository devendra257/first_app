import 'package:flutter/material.dart';

class AnimationAlignment extends StatefulWidget {
  const AnimationAlignment({super.key});

  @override
  State<AnimationAlignment> createState() => _AnimationAlignmentState();
}

class _AnimationAlignmentState extends State<AnimationAlignment> {
  var mAlignment = Alignment.bottomRight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Alignment'),
      ),
      body: AnimatedAlign(
        duration: const Duration(seconds: 2),
        curve: Curves.bounceOut,
        alignment: mAlignment,
        child: InkWell(
          onTap: () {
            mAlignment = mAlignment == Alignment.bottomRight
                ? Alignment.topLeft
                : Alignment.bottomRight;
            setState(() {});
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
