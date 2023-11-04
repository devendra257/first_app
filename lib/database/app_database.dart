import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class AppDataBase {
  //* Private Construtor.. Single Ton class is

  AppDataBase._();

  static final AppDataBase db = AppDataBase._();

  //* Yaha par Sqflite se database aayega Matlab ki ye wo h ki database Sqflite se data aayega..

  Database? _database;

  Future<Database> getDB() async {
    if (_database != null) {
      return _database!;
    } else {
      return await initDB();
    }
  }

  Future<Database> initDB() async {
    //* get application document directory hum path provider se le rahe h or ye use me aata ki ye path ko choice karega ki kaha par data rakhna hai.
    Directory documentDirectory = await getApplicationDocumentsDirectory();

    //* path ye hum path pub se le rahe hai..  ye path ko join karne k liye use me aata h get application ke undar ka data..
    var dbPath = join(documentDirectory.path, "noteappDB.db");

    //* openDataBase ye b sqflite se liya jata hai..

    return openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        db.execute(
            " Create table note ( note_id integer primary key autoincrement, title text, des text ) ");
      },
    );
  }

  Future<bool> addNote(String title, String des) async {

    //* Data ka reference karke ke liye getDB call karna waha par..
    var db = await getDB();

    //* agar yaha hum futute int ka use karte h to logic ni laga pate or hum await ka use kiya isliye int ya var ka use kar skte h..

    int rowsEffect = await db.insert('note', {
      'title': title,
      'des': des,
    });

    if (rowsEffect > 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<Map<String, dynamic>>> fetchAllNotes() async {
    var db = await getDB();

//* query jo hota h wo selection ka work karti h isliye hum wo use karte h..

    List<Map<String, dynamic>> notes = await db.query('note');

    return notes;
  }
}
