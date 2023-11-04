import 'package:flutter/material.dart';

class AnimationCrossfade extends StatefulWidget {
  const AnimationCrossfade({super.key});

  @override
  State<AnimationCrossfade> createState() => _AnimationCrossfadeState();
}

class _AnimationCrossfadeState extends State<AnimationCrossfade> {
  bool firstVisiable = true;
  @override
  Widget build(BuildContext context) {
    String isFade = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated CrossFade'),
      ),
      body: InkWell(
        onTap: () {
          firstVisiable = !firstVisiable;
          setState(() {});
        },
        child: AnimatedCrossFade(
          duration: const Duration(
            seconds: 5,
          ),
          firstChild: Container(
            width: 300,
            height: 300,
            color: Colors.grey.shade700,
          ),
          secondChild: SizedBox(
            width: 300,
            height: 300,
            child: Image.asset("assets/images/ic_instagram.png"),
          ),
          crossFadeState: firstVisiable
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
      ),
    );
  }
}
