import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FlutterAnimation extends StatefulWidget {
  const FlutterAnimation({super.key});

  @override
  State<FlutterAnimation> createState() => _FlutterAnimationState();
}

class _FlutterAnimationState extends State<FlutterAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations in Flutter'),
      ),
      body: Column(
        children: [
          Animate(
            delay: 3.seconds,
            effects: [const FadeEffect(), const ScaleEffect()],
            child: const Text(
              'Devendra',
              style: TextStyle(fontSize: 50),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 30,
            ),
          )
              .animate()
              .boxShadow(duration: 2.seconds)
              .fade()
              .scale(delay: 4.seconds),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Welcome to My House",
            style: TextStyle(
              fontSize: 20,
            ),
          ).animate().shake().fade(),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
            ),
          ).animate().fade(), // begin=0, end=1
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
            ),
          ).animate().fade(begin: 0.5), // end=1
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
            ),
          ).animate().fade(end: 0.5), // begin=1
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Hello',
            style: TextStyle(
              fontSize: 20,
            ),
          ).animate().tint(color: Colors.purple),
          const SizedBox(
            height: 10,
          ),

          const Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
            ),
          )
              .animate()
              .fadeIn(duration: 600.ms)
              .then(delay: 200.ms) // baseline=800ms
              .slide(),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: AnimateList(
              interval: 400.ms,
              effects: [FadeEffect(duration: 300.ms)],
              children: [
                const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "World",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Goodbye",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          // or shorthand:
          Column(
            children: [
              const Text(
                "Hello",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text(
                "World",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text(
                "Goodbye",
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ].animate(interval: 400.ms).fade(duration: 300.ms),
          ),
          Image.asset(
            "assets/images/ic_book.png",
            width: 100,
          ).animate().scale()
        ],
      ),
    );
  }
}
