import 'package:flutter/material.dart';

class ImagesUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  // * png image to insert on container
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/img_ballon.png'),
                ),
                SizedBox(
                  // * JPG Image to insert on container
                  // color: Colors.amber,
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/img_flower.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/img_playgame.webp',
                        ),
                        fit: BoxFit.cover),
                  ),

                  // child: Image.asset(
                  //   'assets/images/img_playgame.webp',
                  //   fit: BoxFit.fitHeight,
                  // ),
                ),
                SizedBox(
                  // * Icons to insert on container
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/ic_profile.png'),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.network(
                      'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
