import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RiveAnimationController extends StatefulWidget {
  const RiveAnimationController({super.key});

  @override
  State<RiveAnimationController> createState() =>
      _RiveAnimationControllerState();
}

class _RiveAnimationControllerState extends State<RiveAnimationController> {
  var rivePath = "assets/rive/star.riv";
  StateMachineController? machineController;
  Artboard? mainArtBoard;
  SMIInput<bool>? riveInput;

  @override
  void initState() {
    super.initState();

    rootBundle.load(rivePath).then(
      (riveByteData) {
        var file = RiveFile.import(riveByteData);

        var artBoard = file.mainArtboard;

        machineController =
            StateMachineController.fromArtboard(artBoard, "starFav");

        if (machineController != null) {
          artBoard.addController(machineController!);

          riveInput = machineController!.findInput("Check");

          mainArtBoard = artBoard;
          setState(() {});
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rive Animation'),
      ),
      body: mainArtBoard == null
          ? Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            )
          : InkWell(
              onTap: () {
                if (riveInput != null) {
                  if (riveInput!.value == false &&
                      riveInput!.controller.isActive == false) {
                    //* controller.isActive check kar raha h ki animation chal rha h ki ni agar chal rha h to animation to dubara start ni karna h..
                    riveInput!.value = true;
                  } else if (riveInput!.value == true &&
                      riveInput!.controller.isActive == false) {
                    riveInput!.value = false;
                  }
                }
              },
              child: Rive(artboard: mainArtBoard!)),
    );
  }
}
