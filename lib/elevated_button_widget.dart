import 'package:first_app/my_widget/rounded_button.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),
      body: Column(
        children: [
          RoundedButton(
            onTap: () {
              print('Play');
            },
            title: 'Play',
            mWidth: 200,
            mColor: Colors.orange,
          ),
          RoundedButton(
            onTap: () {
              print('Login');
            },
            title: 'Login',
            mRadius: 20,
            icon: Icons.login,
          ),
          RoundedButton(
              title: "My Button",
              mColor: Colors.pink,
              mRadius: 20,
              onTap: () {
                print('my button');
              })
        ],
      ),
    );
  }
}
