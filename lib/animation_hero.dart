import 'package:first_app/my_widget/details_page_hero.dart';
import 'package:flutter/material.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
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
        title: const Text('Hero Animation'),
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
                MaterialPageRoute(
                  builder: (context) => DetailsPageHero(
                    imgUrl: heroList[index],
                    index: index,
                  ),
                ),
              );
            },
            child: Hero(tag: "$index", child: Image.asset(heroList[index])),
          );
        },
      ),
    );
  }
}
