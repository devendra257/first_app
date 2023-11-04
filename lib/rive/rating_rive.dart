import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RatingRive extends StatefulWidget {
  const RatingRive({super.key});

  @override
  State<RatingRive> createState() => _RatingRiveState();
}

class _RatingRiveState extends State<RatingRive> {
  var rivePath = "assets/rive/rating.riv";
  StateMachineController? machineController;
  Artboard? mainArtBoard;
  SMINumber? riveInput;

  int ratingNumber = 0;

  @override
  void initState() {
    super.initState();

    rootBundle.load(rivePath).then(
      (riveByteData) {
        var file = RiveFile.import(riveByteData);

        var artBoard = file.mainArtboard;

        machineController =
            StateMachineController.fromArtboard(artBoard, "State Machine 1");

        if (machineController != null) {
          artBoard.addController(machineController!);

          riveInput = machineController!.findSMI("rating");

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
        title: Text('Rive Animation Rating'),
      ),
      body: mainArtBoard == null
          ? Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            )
          : InkWell(
              onTap: () {
                if (ratingNumber == 1) {
                  riveInput!.change(ratingNumber.toDouble());
                } else {
                  riveInput!.change(ratingNumber.toDouble());
                  ratingNumber--;
                }
              },
              child: Rive(
                artboard: mainArtBoard!,
              ),
            ),
    );
  }
}
