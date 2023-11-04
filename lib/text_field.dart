import 'package:flutter/material.dart';

class FieldTextUI extends StatelessWidget {
  var textController = TextEditingController();
  var textController2 = TextEditingController();
  var textController3 = TextEditingController();
  var textController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: ,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  // ! Addition of two Number...
                  controller: textController,
                  // obscureText: true,  // ? using for password only...
                  onChanged: (intValue) {
                    print(
                        intValue); // * one digit to digit print and search to one alphabet..
                    //  TODO : it is used to search/ filter like flipkart and amazon brand filter etc..
                  },
                ),
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: textController2,
                  onChanged: (int2Value) {
                    print(int2Value);
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  var sum = (
                    int.parse(textController.text.toString()) +
                        int.parse(textController2.text.toString()),
                  );
                  // ignore: avoid_print
                  print(sum);
                },
                child: const Text('Add'),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  // maxLines: 4,
                  controller: textController3,
                  obscureText: true,
                  onChanged: (passwordValue) {},
                  // obscuringCharacter: '@',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),

                      // borderSide: BorderSide(color: Colors.red, width: 6),
                    ),
                    icon: const Icon(Icons.email),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  // minLines: 3,
                  keyboardType: TextInputType.phone,
                  controller: textController4,

                  onChanged: (nameValue) {},

                  // obscureText: true,
                  // obscuringCharacter: '@',
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    label: const Text('Email'),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.orange, width: 1),
                    ),
                    prefixIcon: const Icon(Icons.email),
                    suffixIcon: const Icon(Icons.password),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
