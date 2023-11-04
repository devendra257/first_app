import 'package:flutter/material.dart';

class MultiTweenAnimation extends StatefulWidget {
  const MultiTweenAnimation({super.key});

  @override
  State<MultiTweenAnimation> createState() => _MultiTweenAnimationState();
}

class _MultiTweenAnimationState extends State<MultiTweenAnimation>
    with TickerProviderStateMixin {
  late AnimationController mController;
  late AnimationController mSecondController;
  late Animation tweenAnim;
  late Animation sizeAnim;
  late Animation ColorAnim;
  late Animation alignAnim;
  late Animation<Size?> boxAnim;
  var reverseCount = 0;

  @override
  void initState() {
    super.initState();
    //Todo : Step 1
    mController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addListener(() {
            // print("mController : ${mController.value}");
            setState(() {});
          })
          ..addStatusListener((status) {
            print(status);

            if (status == AnimationStatus.reverse) {
              mSecondController.repeat(reverse: true);
            }
          })
          ..repeat(reverse: true);

    mSecondController =
        AnimationController(vsync: this, duration: Duration(seconds: 4))
          ..addListener(() {
            setState(() {});
          });

    tweenAnim = Tween(begin: 11.0, end: 21.0)
        .animate(mController); //* Tween Animation only

    ColorAnim = ColorTween(begin: const Color(0xffa18cd1), end: Colors.red)
        .animate(mSecondController);

    alignAnim =
        AlignmentTween(begin: Alignment.topLeft, end: Alignment.bottomRight)
            .animate(mController);

    boxAnim = SizeTween(begin: const Size(100, 200), end: const Size(200, 100))
        .animate(mController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mController.dispose();
    mSecondController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation Multi'),
      ),
      body: Center(
        child: Align(
          alignment: alignAnim.value,
          child: Container(
            // width: tweenAnim.value,
            // height: tweenAnim.value,
            width: boxAnim.value!.width,
            height: boxAnim.value!.height,
            decoration: BoxDecoration(
              color: ColorAnim.value,
              borderRadius: BorderRadius.circular(tweenAnim.value),
            ),

            //* change the Container colour here!
          ),
        ),
      ),
    );
  }
}
