import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //* Top Text code Container
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          border: Border.all(width: 1),
                        ),
                        child: const Center(
                          child: Text(
                            'Strawberry Pavlova',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        //* this is used to second text box..
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          border: Border.all(width: 1),
                        ),
                        child: const Center(
                          child: Text(
                            'Pavlova is a merinque-based dessert named after the Russian ballerine Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                            textAlign: TextAlign.center,
                            style: TextStyle(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        //* this container used to star icon and all reviews..
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            border: Border.all(width: 1)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                ),
                              ],
                            ),
                            Text('200 Reviews')
                          ],
                        ),
                      ),
                      Container(
                        //* This Container is used to Prepration time ,Cook timing and Feeds...
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          border: Border.all(width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.kitchen,
                                  size: 20,
                                  color: Colors.lightGreen[400],
                                ),
                                const Text(
                                  'PREP:',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const Text(
                                  '25 min',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 20,
                                  color: Colors.lightGreen[400],
                                ),
                                const Text(
                                  'COOK',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const Text(
                                  '1 Hr',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.local_restaurant,
                                  size: 20,
                                  color: Colors.lightGreen[400],
                                ),
                                const Text(
                                  'FEEDS-',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const Text(
                                  '4-6',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.height,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.amber,
                    child: const Image(
                      width: 600,
                      image: AssetImage(
                        'assets/images/top_pic.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
