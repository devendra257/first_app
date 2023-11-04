import 'package:first_app/page_transition/second_transition.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Page_Transition extends StatefulWidget {
  const Page_Transition({super.key});

  @override
  State<Page_Transition> createState() => _Page_TransitionState();
}

class _Page_TransitionState extends State<Page_Transition> {
  List heroList = [
    "assets/images/img_healthy.webp",
    "assets/images/img_over_weight.png",
    "assets/images/ic_woman4.png",
    "assets/images/ic_youtube.png",
    "assets/images/ic_boom.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Transition'),
      ),
      body: GridView.builder(
        itemCount: heroList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  child: SecondTransition(
                    imgUrl: heroList[index],
                    index: index,
                  ),
                  duration: Duration(seconds: 5),
                  childCurrent: Page_Transition(),
                  curve: Curves.bounceOut,
                  type: PageTransitionType.bottomToTopJoined,
                  alignment: Alignment.center,
                ),
              );
            },
            child: Image.asset(heroList[index]),
          );
        },
      ),
    );
  }
}
