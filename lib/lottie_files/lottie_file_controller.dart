import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieFilesController extends StatefulWidget {
  const LottieFilesController({super.key});

  @override
  State<LottieFilesController> createState() => _LottieFilesControllerState();
}

class _LottieFilesControllerState extends State<LottieFilesController>
    with SingleTickerProviderStateMixin {
  late AnimationController lottieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lottieController = AnimationController(vsync: this);
    // lottieController.forward();
    // lottieController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie Files Controller'),
      ),
      body: Column(
        children: [
          Container(
            child: Lottie.asset(
              'assets/lottiefile/box_animation.json',
              controller: lottieController,
              onLoaded: (comp) {
                lottieController.duration = comp.duration;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (lottieController.isAnimating) {
                lottieController.stop();
              } else {
                lottieController.repeat();
              }
            },
            child: Text('Start'),
          )
        ],
      ),
    );
  }
}
