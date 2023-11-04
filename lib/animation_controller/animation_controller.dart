import 'package:flutter/material.dart';

class AnimController extends StatefulWidget {
  const AnimController({super.key});

  @override
  State<AnimController> createState() => _AnimControllerState();
}

class _AnimControllerState extends State<AnimController>
    with SingleTickerProviderStateMixin {
  late AnimationController mController;

  @override
  void initState() {
    super.initState();

    //Todo Setps : 1
    mController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));

    //Todo Setps : 2
    mController.addListener(() {
      //! Animation Controller started on 0 to 1; this is important..
      print(mController.value);
      setState(() {});
    });
    //Todo Setps : 3
    //* Hum bole machine ko ki tu ab start ho ja to ye start hoga isliye controller.forword ka use hua h..
    // mController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Controller"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200 * mController.value,
              height: 200 * mController.value,
              color: Colors.red.shade200, //* change the Container colour here!
            ),
            ElevatedButton(
              onPressed: () {
                //Todo Setps : 3
                //* Hum bole machine ko ki tu ab start ho ja to ye start hoga isliye controller.forword ka use hua h..
                mController.forward();
              },
              child: Text('Start'),
            )
          ],
        ),
      ),
    );
  }
}
