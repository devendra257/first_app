import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String title;
  double mWidth;
  Color mColor;
  double mRadius;
  IconData? icon;
  VoidCallback? onTap;

  RoundedButton({
    required this.title,
    this.mWidth = 300,
    this.mColor = Colors.blue,
    this.mRadius = 10,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth,
      child: ElevatedButton(
        onPressed: onTap,
        child: icon == null
            ? Text(title)
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow),
                  Text(title),
                ],
              ),
        style: ElevatedButton.styleFrom(
          backgroundColor: mColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(mRadius),
          ),
        ),
      ),
    );
  }
}
