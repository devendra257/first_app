import 'package:flutter/material.dart';

class ContainerUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                //* Container Design Number 1...
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.cyan.shade300,
                  border: Border.all(
                      width: 1,
                      strokeAlign: BorderSide
                          .strokeAlignOutside // TODO: Borderside parameter used to stroke outside, inside, center..
                      ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: const FittedBox(
                  child: Center(
                    child: Text(
                      'Container Number 1',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
              Container(
                //* Container Degisn Number 2
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 162, 81),
                  borderRadius: BorderRadius.all(Radius.elliptical(40, 100)),
                  // shape: BoxShape.rectangle,  // * It is use to predefine boxshape on the Container
                  boxShadow: [
                    // * Shadow always use to list component
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15,
                      spreadRadius: 3,
                    )
                  ],
                ),
                child: const FittedBox(
                  child: Text(
                    'Container Number 2',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                //* Containe Design Number 3
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.pink.shade300,
                  borderRadius:
                      const BorderRadiusDirectional.all(Radius.circular(40)),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(10, 10),
                        color: Colors.grey,
                        blurRadius: 11,
                        spreadRadius: 5),
                  ],
                ),
                child: const FittedBox(
                  child: Center(
                    child: Text(
                      'Container Number 3',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
