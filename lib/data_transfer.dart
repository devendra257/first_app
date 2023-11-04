import 'package:first_app/data_transfer_2.dart';
import 'package:flutter/material.dart';

class Data_Transfer extends StatefulWidget {
  const Data_Transfer({super.key});

  @override
  State<Data_Transfer> createState() => _Data_TransferState();
}

class _Data_TransferState extends State<Data_Transfer> {
  var nameController = TextEditingController();
  var mailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Transfer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  label: Text('Enter Name'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: mailController,
                decoration: InputDecoration(
                  hintText: 'Enter Your mail ID',
                  label: Text('Enter Your mail ID'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Data_Transfer_2(
                              name: nameController.text.toString(),
                              mail: mailController.text.toString(),
                            ),
                          ),
                        );
                      },
                      child: Text('Next')))
            ],
          ),
        ),
      ),
    );
  }
}
