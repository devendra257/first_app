import 'package:flutter/material.dart';

class ContactPageWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff533d32),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    //* Child 1(Title)
                    'Keeper',
                    style: TextStyle(
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    //* Child 2 (Take a row for button )
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        // *Button 1
                        onPressed: () {},
                        child: const Text(
                          'About',
                          style: TextStyle(
                            color: Color.fromARGB(125, 255, 255, 255),
                          ),
                        ),
                      ),
                      TextButton(
                        // *Button 2
                        onPressed: () {},
                        child: const Text(
                          'Services',
                          style: TextStyle(
                            color: Color.fromARGB(125, 255, 255, 255),
                          ),
                        ),
                      ),
                      TextButton(
                        // *Button 3
                        onPressed: () {},
                        child: const Text(
                          'Projects',
                          style: TextStyle(
                            color: Color.fromARGB(125, 255, 255, 255),
                          ),
                        ),
                      ),
                      TextButton(
                        // *Button 4
                        onPressed: () {},
                        child: const Text(
                          'Blogs',
                          style: TextStyle(
                            color: Color.fromARGB(125, 255, 255, 255),
                          ),
                        ),
                      ),
                      TextButton(
                        // *Button 5
                        onPressed: () {},
                        child: const Text(
                          'Contact',
                          style: TextStyle(
                            color: Color.fromARGB(125, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 1,
                color: const Color.fromARGB(88, 255, 255, 255),
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 60),
                        child: const Text(
                          // *  Child 1 (Title Container)
                          'Let\'s work together!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                              fontFamily: 'Faustina'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        // * Child 2 (Subtitle Text)
                        'Let us help vou become even greater at what vou do Fill out the following form and we will get back to you in the next 24 hours.',
                        style: TextStyle(
                            // color: Color.fromARGB(160, 255, 255, 255),
                            color: Color.fromARGB(255, 208, 208, 208),
                            fontSize: 20,
                            fontFamily: 'Poppins'),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        // * Child 4 (Container for 01)
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(125, 255, 255, 255),
                            )),
                        child: const Center(
                          child: Text(
                            '01',
                            style: TextStyle(
                              color: Color.fromARGB(125, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        // * Child 5 (Text Name)
                        'What is your name?',
                        style: TextStyle(
                          fontSize: 18,
                          // color: Color.fromARGB(160, 255, 255, 255),
                          color: Color.fromARGB(255, 227, 227, 227),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        // * Child 6 (Text Field for Full Name)
                        style: TextStyle(
                          color: Color(0xffB9A7A3),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Type your full name',
                          hintStyle: TextStyle(
                            color: Color(0xffB9A7A3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        // * Child 7 (Container for 02)
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(125, 255, 255, 255),
                            )),
                        child: const Center(
                          child: Text(
                            '02',
                            style: TextStyle(
                              color: Color.fromARGB(125, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        // * Child 8 (Text for Gmail)
                        'What is your email address?',
                        style: TextStyle(
                          fontSize: 18,
                          // color: Color.fromARGB(160, 255, 255, 255),
                          color: Color.fromARGB(255, 227, 227, 227),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        // * Child 9 (Text Field for Gmail)
                        style: TextStyle(
                          color: Color(0xffB9A7A3),
                        ),
                        decoration: InputDecoration(
                          hintText: 'examble@email.com',
                          hintStyle: TextStyle(
                            color: Color(0xffB9A7A3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        //*  Child 10 (Container for 03)
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(125, 255, 255, 255),
                            )),
                        child: const Center(
                          child: Text(
                            '03',
                            style: TextStyle(
                              color: Color.fromARGB(125, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        //* Child 11(Text Mobile Number)
                        'What is vour phone number?',
                        style: TextStyle(
                          fontSize: 18,
                          // color: Color.fromARGB(160, 255, 255, 255),
                          color: Color.fromARGB(255, 227, 227, 227),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        //* Child 12(Text Field Mobile Number)

                        style: TextStyle(
                          color: Color(0xffB9A7A3),
                        ),
                        decoration: InputDecoration(
                          hintText: '+91 2222 333344',
                          hintStyle: TextStyle(
                            color: Color(0xffB9A7A3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        //* child 13 (Container for 04)
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(125, 255, 255, 255),
                            )),
                        child: const Center(
                          child: Text(
                            '04',
                            style: TextStyle(
                              color: Color.fromARGB(125, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        //* Child 14(Text Organization Number)

                        'What is your company/organization name?',
                        style: TextStyle(
                          fontSize: 18,
                          // color: Color.fromARGB(160, 255, 255, 255),
                          color: Color.fromARGB(255, 227, 227, 227),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        //* Child 15(Text Field Organization Number)
                        style: TextStyle(
                          color: Color(0xffB9A7A3),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Type your company/organiztion name',
                          hintStyle: TextStyle(
                            color: Color(0xffB9A7A3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        //* Child 16 (Container for 05)
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(125, 255, 255, 255),
                            )),
                        child: const Center(
                          child: Text(
                            '05',
                            style: TextStyle(
                              color: Color.fromARGB(125, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        //* Child 17( Text Service Looking)
                        'What is services are you looking for?',
                        style: TextStyle(
                          fontSize: 18,
                          // color: Color.fromARGB(160, 255, 255, 255),
                          color: Color.fromARGB(255, 227, 227, 227),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        //* Child 17( Text Service Looking)
                        style: TextStyle(
                          color: Color(0xffB9A7A3),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Choose from a list here',
                          hintStyle: TextStyle(
                            color: Color(0xffB9A7A3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        //* Child 18 (Container for 06)
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(125, 255, 255, 255),
                            )),
                        child: const Center(
                          child: Text(
                            '06',
                            style: TextStyle(
                              color: Color.fromARGB(125, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        //* Child 19 (Text Budget Project)
                        'What have you budgeted for this project?',
                        style: TextStyle(
                          fontSize: 18,
                          // color: Color.fromARGB(160, 255, 255, 255),
                          color: Color.fromARGB(255, 227, 227, 227),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        //* child 20(Text Field For Project)..
                        style: TextStyle(
                          color: Color(0xffB9A7A3),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Choose from a list her',
                          hintStyle: TextStyle(
                            color: Color(0xffB9A7A3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        //* child 21 (Container 07)
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(125, 255, 255, 255),
                            )),
                        child: const Center(
                          child: Text(
                            '07',
                            style: TextStyle(
                              color: Color.fromARGB(125, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        //* child 22 (Text for About project)
                        'Tell us about yout project',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 227, 227, 227),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        //* Child 23 ( Text Field For About Project)
                        style: TextStyle(
                          color: Color(0xffB9A7A3),
                        ),
                        decoration: InputDecoration(
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.brown),
                          // ),
                          // focusColor: Color.fromARGB(0, 0, 255, 149),
                          // focusedBorder: OutlineInputBorder(
                          //     borderSide: BorderSide(color: Colors.white12)),
                          hintText: 'Please type your project description',
                          hintStyle: TextStyle(
                            color: Color(0xffB9A7A3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      OutlinedButton(
                        //* Child 24 (Send Message Button)
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Color.fromARGB(255, 227, 227, 227),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          print('It is Pressed');
                        },
                        child: const SizedBox(
                          width: 200,
                          height: 55,
                          child: Padding(
                            padding: EdgeInsets.all(11.0),
                            child: Row(
                              children: [
                                Text(
                                  'SEND MESSAGE',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 227, 227, 227),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.send,
                                  color: Color.fromARGB(255, 227, 227, 227),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.amber,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
