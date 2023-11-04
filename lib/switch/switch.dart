import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
      ),
      body: Column(
        children: [
          Switch(
            activeColor: Colors.amber,
            splashRadius: 34,
            thumbColor: MaterialStateColor.resolveWith((states) {
              print(states);
              if (states.contains(MaterialState.selected)) {
                return Colors.tealAccent;
              }
              return Colors.red;
            }),
            thumbIcon: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return Icon(
                  Icons.done,
                  color: Colors.red,
                );
              }
              return Icon(
                Icons.close,
                color: Colors.tealAccent,
              );
            }),
            value: isSwitch,
            onChanged: (value) {
              isSwitch = value;
              setState(() {});
            },
          ),
          Switch(
            // activeColor: Colors.amber,
            splashRadius: 34,
            // thumbColor: MaterialStateColor.resolveWith((states) {
            //   print(states);
            //   if (states.contains(MaterialState.selected)) {
            //     return Colors.tealAccent;
            //   }
            //   return Colors.red;
            // }),
            thumbIcon: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return Icon(
                  Icons.sunny,
                  color: Colors.amber,
                );
              }
              return Icon(
                Icons.nightlight,
                color: Colors.cyan,
              );
            }),
            value: isSwitch,
            onChanged: (value) {
              isSwitch = value;
              setState(() {});
            },
          ),
          SwitchListTile(
            title: Text('Light'),
            controlAffinity: ListTileControlAffinity.leading,
            // activeColor: Colors.amber,
            splashRadius: 34,
            // thumbColor: MaterialStateColor.resolveWith((states) {
            //   print(states);
            //   if (states.contains(MaterialState.selected)) {
            //     return Colors.tealAccent;
            //   }
            //   return Colors.red;
            // }),
            thumbIcon: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return Icon(
                  Icons.sunny,
                  color: Colors.amber,
                );
              }
              return Icon(
                Icons.nightlight,
                color: Colors.cyan,
              );
            }),
            value: isSwitch,
            onChanged: (value) {
              isSwitch = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
