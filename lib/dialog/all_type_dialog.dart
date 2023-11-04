import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overlays'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        barrierColor: Colors.black.withOpacity(0.5),
                        builder: (_) {
                          return AlertDialog(
                            title: const Text('Delete?'),
                            content: const Text('Are you sure want to delete?'),
                            icon: const Icon(Icons.delete),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    //delete the item
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Yes')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('No')),
                            ],
                          );
                        });
                  },
                  child: const Text('Alert Dialog'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) {
                          return SimpleDialog(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 11),
                            title: const Text('Choose your State'),
                            children: [
                              SimpleDialogOption(
                                child: const Text('CG'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              SimpleDialogOption(
                                child: const Text('MP'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              SimpleDialogOption(
                                child: const Text('UP'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('Simple Dialog')),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) {
                          return const AboutDialog(
                            applicationIcon: Icon(Icons.ac_unit_outlined),
                            applicationName: "My First App",
                            applicationVersion: "v 20.4",
                            applicationLegalese: "Powered by Devendra",
                          );
                        },
                      );
                    },
                    child: const Text('About Dialog')),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      showGeneralDialog(
                          barrierDismissible: true,
                          barrierLabel: "custom",
                          context: context,
                          pageBuilder: (_, __, ___) {
                            return Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade200,
                                    borderRadius: BorderRadius.circular(21)),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 11),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 11),
                                height: 250,
                                child: Material(
                                  color: Colors.transparent,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Add Note',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.black),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(21),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 11,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(21),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 21,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Add')),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Cancel'))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: const Text('General Dialog')),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('  You\'re back online'),
                        backgroundColor: Colors.green,
                        margin: const EdgeInsets.all(11),
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          onPressed: () {},
                          label: 'Proceed',
                        ),
                        showCloseIcon: true,
                      ));
                    },
                    child: const Text('Show SnackBar')),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      var dateTime = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000, 8, 29),
                          lastDate: DateTime.now());

                      if (dateTime != null) {
                        print(
                            "selected Date: ${dateTime.day}/${dateTime.month}/${dateTime.year}");
                      }
                    },
                    child: const Text('Show Date Picker')),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      var dateTime = await showDateRangePicker(
                          context: context,
                          firstDate: DateTime(2000, 8, 29),
                          lastDate: DateTime.now());

                      if (dateTime != null) {
                        print(
                            "selected Date: ${dateTime.start.day}/${dateTime.start.month}/${dateTime.start.year} - ${dateTime.end.day}/${dateTime.end.month}/${dateTime.end.year}");
                      }
                    },
                    child: const Text('Show Date Range Picker')),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      var timeDay = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                      );

                      if (timeDay != null) {
                        print(
                            "selected Time: ${timeDay.hour}: ${timeDay.minute}");
                      }
                    },
                    child: const Text('Show Time Picker')),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: 'Hello World!!!',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.red,
                      textColor: Colors.black,
                      fontSize: 16.0,
                    );
                  },
                  child: const Text('Toast Msg Package'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return Container(
                            color: Colors.white,
                            height: 200,
                            child: CupertinoDatePicker(
                              onDateTimeChanged: (value) {
                                print(
                                    'Date Time :-  ${value.day}/${value.month}/${value.year},  ${value.hour}/${value.minute}');
                              },
                              initialDateTime: DateTime.now(),
                              maximumDate:
                                  DateTime.now().add(const Duration(days: 7)),
                              minimumDate: DateTime(2000),
                            ),
                          );
                        },
                      );
                    },
                    child: const Text('Cupertino Date Picker')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //* it is used for iphone and android both
                  // Checkbox.adaptive(value: value, onChanged: onChanged),
                  Checkbox(
                    activeColor: Colors.green,
                    checkColor: Colors.yellow,
                    fillColor: MaterialStateColor.resolveWith((states) {
                      print(states);

                      if (states.contains(MaterialState.selected)) {
                        return Colors.green;
                      }
                      return Colors.cyan;
                    }),
                    splashRadius: 50,

                    //Padding Remove karne ke liye..
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: isChecked,
                    onChanged: (value) {
                      isChecked = value!;
                      setState(() {});
                    },
                  ),
                  const Text('Checked')
                ],
              ),
              CheckboxListTile(
                value: isChecked,
                title: const Text('Checked'),
                subtitle: const Text('hello'),
                isThreeLine: true,
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (value) {
                  isChecked = value!;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
