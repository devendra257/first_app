import 'package:flutter/material.dart';

class BasicCalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BasicCalculatorState();
  }
}

class BasicCalculatorState extends State<BasicCalculator> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var flag = 0;

  String mResult = "";
  @override
  Widget build(BuildContext context) {
    print('HomeState build!!');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Basic Calculator',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: no1Controller,
              decoration: InputDecoration(
                hintText: 'Enter No 1',
                label: const Text('Number 1'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: no2Controller,
              decoration: InputDecoration(
                hintText: 'Enter No 2',
                label: const Text('Number 2'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    flag = 1;
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    flag = 2;
                  },
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    flag = 3;
                  },
                  child: const Text('x'),
                ),
                ElevatedButton(
                  onPressed: () {
                    flag = 4;
                  },
                  child: const Text('/'),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            StatefulBuilder(
              builder: (context, setState) {
                print('Stateful Builder');
                return Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (no1Controller.text.toString() != "" &&
                            no2Controller.text.toString() != "") {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          if (flag == 1) {
                            //* Addition
                            mResult = (no1 + no2).toString();
                            print('$mResult');
                          } else if (flag == 2) {
                            //*Substact
                            mResult = (no1 - no2).toString();
                          } else if (flag == 3) {
                            //* multiple
                            mResult = (no1 * no2).toString();
                          } else if (flag == 4) {
                            //* divide
                            if (no2 != 0) {
                              mResult = (no1 / no2).toString();
                            } else {
                              mResult =
                                  'Infinite Solution . Error'; //! Error for infinite solution....
                            }
                          } else {
                            mResult =
                                'Please Press any key before operation'; //! Error for press any key....
                          }
                        } else {
                          mResult = 'Please Fill all required Blanks';
                        }
                        setState(() {});
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Center(child: Text('Calculator')),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      mResult == '' ? "" : mResult,
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
