import 'package:first_app/database/app_database.dart';
import 'package:flutter/material.dart';

class DataBaseBasic extends StatefulWidget {
  const DataBaseBasic({super.key});

  @override
  State<DataBaseBasic> createState() => _DataBaseBasicState();
}

class _DataBaseBasicState extends State<DataBaseBasic> {
  late AppDataBase myDB;

  List<Map<String, dynamic>> arrNotes = [];

  @override
  void initState() {
    super.initState();

    myDB = AppDataBase.db;

    addNotes();
  }

  void addNotes() async {
    bool check = await myDB.addNote("Hello", "Hello World");

    if (check) {
      arrNotes = await myDB.fetchAllNotes();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Database Basic'),
      ),
      body: ListView.builder(
        itemCount: arrNotes.length,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text('${arrNotes[index]['title']}'),
            subtitle: Text('${arrNotes[index]['des']}'),
          );
        },
      ),
    );
  }
}
