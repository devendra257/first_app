import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TweenAnim extends StatefulWidget {
  const TweenAnim({super.key});

  @override
  State<TweenAnim> createState() => _TweenAnimState();
}

class _TweenAnimState extends State<TweenAnim>
    with SingleTickerProviderStateMixin {
  late AnimationController mController;
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
        AnimationController(vsync: this, duration: Duration(seconds: 4));

    //* Tween Animation
    //* tween se animation kuch ni aata hame use karna animate karne ke liye

    sizeAnim = Tween(begin: 100.0, end: 200.0).animate(
      mController,
    );

    // sizeAnim = Tween(begin: 100.0, end: 200.0).animate(CurvedAnimation(
    //     parent: mController,
    //     curve: Curves.bounceOut)); //! tween animation with bounce effect.

    tweenAnim = Tween(begin: 11.0, end: 21.0)
        .animate(mController); //* Tween Animation only

    ColorAnim = ColorTween(begin: Color(0xffa18cd1), end: Color(0xfffbc2eb))
        .animate(mController);

    alignAnim =
        AlignmentTween(begin: Alignment.topLeft, end: Alignment.bottomRight)
            .animate(mController);

    boxAnim = SizeTween(begin: Size(100, 200), end: Size(200, 100))
        .animate(mController);

    //Todo : step 2

    mController.addListener(() {
      print("mController : ${mController.value}");
      print("Tween : ${tweenAnim.value}");
      // print("TweenColor : ${colorAnim.value}");
      setState(() {});
    });

    //Todo Setps : 3
    //* Hum bole machine ko ki tu ab start ho ja to ye start hoga isliye controller.forword ka use hua h..
    mController.repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation'),
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
