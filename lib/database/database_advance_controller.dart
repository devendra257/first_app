import 'package:first_app/database/app_database_with_text_controller.dart';
import 'package:flutter/material.dart';

class DataBaseAdvance extends StatefulWidget {
  @override
  State<DataBaseAdvance> createState() => _DataBaseAdvanceState();
}

class _DataBaseAdvanceState extends State<DataBaseAdvance> {
  late AppDataBaseSecond myDB;
  List<Map<String, dynamic>> arrNotes = [];

  var titleController = TextEditingController();
  var descController = TextEditingController();

  @override
  initState() {
    super.initState();
    myDB = AppDataBaseSecond.db;

    getNotes();
  }

  void getNotes() async {
    arrNotes = await myDB.fetchAllNotes();
    setState(() {});
  }

  void addNotes(String title, String desc) async {
    bool check = await myDB.addNote(title, desc);

    if (check) {
      arrNotes = await myDB.fetchAllNotes();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Database Advance'),
      ),
      body: ListView.builder(
        itemCount: arrNotes.length,
        itemBuilder: (_, index) {
          return ListTile(
              title: Text('${arrNotes[index]['title']}'),
              subtitle: Text('${arrNotes[index]['desc']}'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 400,
                child: Column(
                  children: [
                    Text(
                      'Add Note',
                      style: TextStyle(fontSize: 21),
                    ),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: 'Enter Title',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                      ),
                    ),
                    TextField(
                      controller: descController,
                      decoration: InputDecoration(
                        hintText: 'Enter Desc',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      child: const Text('Add'),
                      onPressed: () {
                        var title = titleController.text.toString();
                        var desc = descController.text.toString();
                        addNotes(title, desc);
                        titleController.text = "";
                        descController.clear();
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
