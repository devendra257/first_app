import 'package:flutter/material.dart';

class ClipperPathPage extends StatefulWidget {
  const ClipperPathPage({super.key});

  @override
  State<ClipperPathPage> createState() => _ClipperPathPageState();
}

class _ClipperPathPageState extends State<ClipperPathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clipper Path'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: ClipPath(
          clipper: PathClipper(),
          child: Image.asset('assets/images/img_flower.jpg'),
        ),
      ),
    );
  }
}

class PathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath = Path();
    //* Move to used on to move to starting point initial path is (0,0) and Normal use for line to!!!

    // mPath.lineTo(size.width, 0);
    // mPath.lineTo(size.width, size.height);
    // mPath.lineTo(size.width * 0.5, size.height * 0.75);

    // mPath.lineTo(0, size.height);

    //* Second
    // mPath.moveTo(0, size.height);
    // mPath.lineTo(size.width * .5, size.height * .75);
    // mPath.lineTo(size.width, size.height);

    //* Third
    // mPath.lineTo(size.width, 0);
    // mPath.quadraticBezierTo(
    //     size.width * .8, size.height * .5, size.width, size.height);

    // mPath.lineTo(size.width * .5, size.height);
    // //* Curve
    // mPath.quadraticBezierTo(size.width * .7, size.height * .2, 0, 0);

    //* Forth
    // mPath.lineTo(size.width, 0);
    // mPath.quadraticBezierTo(
    //     size.width * .8, size.height * .5, size.width, size.height);

    // mPath.lineTo(size.width * .5, size.height);
    // //* rounded
    // mPath.cubicTo(-size.width * .1, size.height * 0.85, size.width * .3,
    //     size.height * 0.1, 0, 0);

    //* Fivth

    mPath.lineTo(size.width * 0.8, 0);

    mPath.cubicTo(size.width * 0.60, size.height * 0.20, size.width,
        size.height * 0.8, size.width * 0.8, size.height);

    mPath.lineTo(size.width * .5, size.height);
    //* rounded

    //* Always use to close the Path
    mPath.close();

    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    //? Agar ap Hot Reload karte h to ui ko initent change karna ke liye ye true hoga ni to false

    return true;
  }
}
