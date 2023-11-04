import 'dart:math';

import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BMICalculatorState();
  }
}

class BMICalculatorState extends State<BMICalculator> {
  var weightController = TextEditingController();
  var feetController = TextEditingController();
  var inchController = TextEditingController();

  String bodymassindex = '';
  dynamic bmiResult = '';
  String bodyImg = '';
  String warning = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              //* TextField for give to weight
              controller: weightController,
              decoration: InputDecoration(
                hintText: 'Enter your weight in kg',
                label: const Text('Enter Weight'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              //* TextField for give to Feet
              controller: feetController,
              decoration: InputDecoration(
                hintText: 'Enter your feet ',
                label: const Text('Enter Feet'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              //* TextField for give to Feet
              controller: inchController,
              decoration: InputDecoration(
                hintText: 'Enter your inch',
                label: const Text('Enter Inch'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (feetController.text != '' &&
                      inchController.text != '' &&
                      weightController.text != '') {
                    var feet = int.parse(feetController.text) *
                        12; //* Change into inch
                    // print('Feet : $feet');
                    var inch =
                        int.parse(inchController.text); //* Change into cm
                    // print('Inch : $inch');
                    var sum = (feet + inch) * 0.0254;
                    // print('Sum: $sum');
                    var totalFeet = pow(sum, 2); //* Find Total Feet..
                    // print('Total feel : $totalFeet');
                    bmiResult = int.parse(weightController.text) /
                        totalFeet; //* BMI formula

                    print('bmi : $bmiResult');

                    if (bmiResult > 25) {
                      bodymassindex = ' It is overweight';
                      bodyImg = 'assets/images/img_over_weight.png';
                    } else if (bmiResult >= 18 && bmiResult <= 25) {
                      bodymassindex = ' It is Healty';
                      bodyImg = 'assets/images/img_healthy.webp';
                    } else if (bmiResult < 18) {
                      bodymassindex = ' It is Under Weight';
                      bodyImg = 'assets/images/img_underweight.jpg';
                    }
                  } else {
                    warning = '  Please fill required parameters';
                  }
                  setState(() {});
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Body Mass Index Value :- $bmiResult',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Body Mass Index Status-$bodymassindex',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$warning',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              child: bodyImg == ''
                  ? Container()
                  : Image.asset(bodyImg, width: 250, height: 250),
            )
          ],
        ),
      ),
    );
  }
}
