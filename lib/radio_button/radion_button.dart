import 'package:flutter/material.dart';

class RadioBottonPage extends StatefulWidget {
  const RadioBottonPage({super.key});

  @override
  State<RadioBottonPage> createState() => _RadioBottonPageState();
}

class _RadioBottonPageState extends State<RadioBottonPage> {
  List<String> listRadioOptions = ['Male', 'Female', 'Other'];
  var selectedGender = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Botton'),
      ),
      body: Column(
        children: [
          Radio(
            value: listRadioOptions[0],
            groupValue: selectedGender,
            onChanged: (value) {
              selectedGender = value!;
              setState(() {});
            },
          ),
          Radio(
            value: listRadioOptions[1],
            groupValue: selectedGender,
            onChanged: (value) {
              selectedGender = value!;
              setState(() {});
            },
          ),
          Radio(
            value: listRadioOptions[2],
            groupValue: selectedGender,
            onChanged: (value) {
              selectedGender = value!;
              setState(() {});
            },
          ),
          //with Title
          RadioListTile(
            title: Text(listRadioOptions[0]),
            value: listRadioOptions[0],
            groupValue: selectedGender,
            onChanged: (value) {
              selectedGender = value!;
              setState(() {});
            },
          ),
          RadioListTile(
            title: Text(listRadioOptions[1]),
            value: listRadioOptions[1],
            groupValue: selectedGender,
            onChanged: (value) {
              selectedGender = value!;
              setState(() {});
            },
          ),
          RadioListTile(
            title: Text(listRadioOptions[2]),
            value: listRadioOptions[2],
            groupValue: selectedGender,
            onChanged: (value) {
              selectedGender = value!;
              setState(() {});
            },
          ),

          //Platfrom
          Radio.adaptive(
            value: listRadioOptions[0],
            groupValue: selectedGender,
            onChanged: (value) {
              selectedGender = value!;
              setState(() {});
            },
          ),
          Radio.adaptive(
            value: listRadioOptions[1],
            groupValue: selectedGender,
            onChanged: (value) {
              selectedGender = value!;
              setState(() {});
            },
          ),
          Radio.adaptive(
            value: listRadioOptions[2],
            groupValue: selectedGender,
            onChanged: (value) {
              selectedGender = value!;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
