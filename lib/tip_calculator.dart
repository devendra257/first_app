import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  dynamic dollerController = TextEditingController();

  var count = 1;
  dynamic totaltip = 0;
  dynamic totalbill = 0;
  dynamic totalperperson = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F3F3),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 35, right: 35, top: 25, bottom: 20),
          child: Column(
            //* Parent Child....
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    //* Image Hat
                    'assets/images/ic_tall_hat.png',
                    width: 100,
                    height: 80,
                  ),
                  const Column(
                    //* Text for Tip Calculator Column
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Mr',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'TIP',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Calculator',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  //* :- Container for Bill and Tips for a Person
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      //* Column for a per Person
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Total p/person',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            // letterSpacing: 1,
                            // fontFamily: 'Roboto',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '\$',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                // letterSpacing: 1,
                                // fontFamily: 'Roboto',
                              ),
                            ),
                            Text(
                              '${(totalperperson)}',
                              style: const TextStyle(
                                fontSize: 70,
                                fontWeight: FontWeight.w900,
                                // letterSpacing: 1,
                                // fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.grey,
                          height: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'Total Bill',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '\$',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff06c4b8),
                                      ),
                                    ),
                                    Text(
                                      '$totalbill',
                                      style: const TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff06c4b8),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Total Tip',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '\$',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff06c4b8),
                                      ),
                                    ),
                                    Text(
                                      '$totaltip',
                                      style: const TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff06c4b8),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Text(
                          'your bill',
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 250,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '\$',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                // letterSpacing: 1,
                                // fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                              ),
                              controller: dollerController,
                              decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                //* this Row is used to Choose your Tip
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      Text(
                        'your tip',
                        style: TextStyle(
                          fontSize: 23,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //* All Percentage 10 15 and 20 %..
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 80,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff06c4b8),
                            ),
                            child: InkWell(
                              onTap: () {
                                dynamic choose1 =
                                    int.parse(dollerController.text) * 0.1;
                                print(choose1);
                                totaltip = choose1;
                                print(totaltip);
                                totalbill = (totaltip +
                                    int.parse(dollerController.text));
                                print(totalbill);
                                totalperperson = totalbill / count;
                                setState(() {});
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  Text(
                                    '%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              var choose2 =
                                  int.parse(dollerController.text) * 0.15;
                              print(choose2);
                              totaltip = choose2;
                              print(totaltip);
                              totalbill =
                                  (totaltip + int.parse(dollerController.text));
                              setState(() {});
                            },
                            child: Container(
                              width: 80,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff06c4b8),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '15',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  Text(
                                    '%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              var choose3 =
                                  int.parse(dollerController.text) * 0.20;

                              print(choose3);
                              totaltip = choose3;
                              print(totaltip);
                              totalbill =
                                  (totaltip + int.parse(dollerController.text));
                              setState(() {});
                            },
                            child: Container(
                              width: 80,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff06c4b8),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  Text(
                                    '%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        //* Custom tip Container design
                        width: 250,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xff06c4b8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Custom tip',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Split',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Text(
                          'the total',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      //* Container to split data and total..
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 70,
                          height: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                            ),
                            color: Color(0xff06c4b8),
                          ),
                          child: InkWell(
                            onTap: () {
                              if (count > 1) {
                                count--;
                                print(count);
                                totalperperson = totalbill / count;
                                print(totalperperson);
                                setState(() {});
                              }
                            },
                            child: const Center(
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 60,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              '$count',
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            count++;
                            print(count);
                            totalperperson = totalbill / count;
                            print(totalperperson);
                            setState(() {});
                          },
                          child: Container(
                            width: 70,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(10),
                              ),
                              color: Color(0xff06c4b8),
                            ),
                            child: const Center(
                              child: Text(
                                '+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
