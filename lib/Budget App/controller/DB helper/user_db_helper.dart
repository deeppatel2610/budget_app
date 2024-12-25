
import 'dart:typed_data';

import 'package:adv_flutter_ch_3/Budget%20App/controller/DB%20helper/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class UserDbHelper {
  UserDbHelper._();

  static UserDbHelper userDbHelper = UserDbHelper._();
  Database? _database;

  Future<Database?> get database async =>
      _database ?? await DbHelper.dbHelper.createDatabase();

  Future<void> insertUser(String name, phone, email) async {
    Database? db = await database;
    String query = "INSERT INTO user(name,phone,email) VALUES(?,?,?)";
    List args = [name, phone, email];
    await db!.rawQuery(query, args);
  }

  Future<void> userUpdate(String name, phone, email, Uint8List img) async {
    Database? db = await database;
    String query =
        "UPDATE user SET name = ?, phone = ?, email = ?, img = ? WHERE id = 1";
    List args = [name, phone, email, img];
    await db!.rawUpdate(query, args);
  }

  Future<List<Map<String, Object?>>> fetchUserRecords() async {
    Database? db = await database;
    String query = '''SELECT * FROM user''';
    return await db!.rawQuery(query);
  }
}
