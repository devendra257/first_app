import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff533d32),
      appBar: AppBar(
        backgroundColor: const Color(0xff533d32),
        title: const Text('Keeper'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
                height: 50,
              ),
              Image.asset(
                // * Child 3 (Images)
                'assets/images/img_get_touch.png',
                // width: 120,
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                // * Child 4 (Container Radius)
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
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfffffff))),
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
                // * Child 7 (Container Radius)
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
                //*  Child 10 (Container Design)
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
                //* child 13 ( Container Design)
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
                //* Child 16 (Container 05 Design)
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
                //* Child 18 (Container 06)
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
                          Icons.arrow_outward_sharp,
                          color: Color.fromARGB(255, 227, 227, 227),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                // * Child 25 (Text for call us)
                'CALL US',
                style: TextStyle(
                  color: Color(0xffB9A7A3),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                // * Child 26 (Text for Phone Number)
                '+91 8313133123',
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 227, 227),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                // * Child 28 (Text for Phone Number)
                '+91 8782317766',
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 227, 227),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                // * Child 29
                'ADDRESS',
                style: TextStyle(
                  color: Color(0xffB9A7A3),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                // * Child 30 (Text for Address)
                '2154 Glen Falls Road \nPlymouth Meeting, \nPennsylvania(PA), 19462',
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 227, 227),
                  height: 1.5,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/ic_facebook2.png',
                    width: 25,
                    height: 25,
                    color: const Color.fromARGB(255, 227, 227, 227),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Image.asset(
                    'assets/images/ic_twitter2.png',
                    width: 30,
                    height: 30,
                    color: const Color.fromARGB(255, 227, 227, 227),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Image.asset(
                    'assets/images/ic_instagram.png',
                    width: 25,
                    height: 25,
                    color: const Color.fromARGB(255, 227, 227, 227),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Image.asset(
                    'assets/images/ic_linkedin.png',
                    width: 25,
                    height: 25,
                    color: const Color.fromARGB(255, 227, 227, 227),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 2,
                color: const Color(0xffB9A7A3),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                '@ 2023 Keeper, All rights reserved',
                style: TextStyle(color: Color(0xffB9A7A3), fontSize: 15),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Privacy Policy',
                style: TextStyle(color: Color(0xffB9A7A3), fontSize: 15),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Design By - Devendra',
                style: TextStyle(color: Color(0xffB9A7A3), fontSize: 15),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
