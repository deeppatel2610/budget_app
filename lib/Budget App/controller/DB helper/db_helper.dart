import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  DbHelper._();

  static DbHelper dbHelper = DbHelper._();
  Database? _database;

  Future<Database?> get database async => _database ?? await createDatabase();

  /// todo: create data base table
  Future<Database?> createDatabase() async {
    var dbPath = await getDatabasesPath();
    var path = join(dbPath, 'deepBudget.db');

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        String query = '''CREATE TABLE deepBudget(
        id INTEGER PRIMARY KEY,
        amount REAL,
        isIncome INTEGER,
        date TEXT,
        category TEXT,
        account TEXT,
        notes TEXT
        )''';

        String userQuery = '''CREATE TABLE user(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        phone TEXT,
        email TEXT,
        img BLOB      
        )''';

        await db.execute(query);
        await db.execute(userQuery);
      },
    );
    return _database;
  }

  /// todo: insert method
  Future<void> insertRecord(double amount, String category, String date,
      int isIncome, String account, String notes) async {
    Database? db = await database;

    String query =
        '''INSERT INTO deepBudget (amount,category,date,isIncome,account,notes)
    VALUES(?,?,?,?,?,?)''';
    List args = [amount, category, date, isIncome, account, notes];
    await db!.rawInsert(query, args);
  }

  /// todo: fetch method
  Future<List<Map<String, Object?>>> fetchRecords() async {
    Database? db = await database;
    String query = '''SELECT * FROM deepBudget''';
    return await db!.rawQuery(query);
  }

  /// todo: delete record method
  Future<void> deleteRecord(int id) async {
    Database? db = await database;
    String query = '''DELETE FROM deepBudget WHERE id = ?''';
    List args = [id];
    db!.rawDelete(query, args);
  }

  /// todo: update record method
  Future<void> updateRecord(
    int id,
    double amount,
    String category,
    int isIncome,
    String date,
    String account,
    String notes,
  ) async {
    Database? db = await database;
    String query =
        '''UPDATE deepBudget SET amount = ?, category = ?, isIncome = ?, date = ?, account = ?, notes = ? WHERE id = ?''';
    List args = [amount, category, isIncome, date, account, notes, id];
    await db!.rawUpdate(query, args);
  }

  /// todo: filter category method
  Future<List<Map<String, Object?>>> filterCategory(String category) async {
    Database? db = await database;
    String query = "SELECT * FROM deepBudget WHERE category = ?";
    List args = [category];
    return await db!.rawQuery(query, args);
  }

  /// todo: filter Search method
  Future<List<Map<String, Object?>>> filterSearch(String search) async {
    Database? db = await database;
    String query = "SELECT * FROM deepBudget WHERE notes LIKE '$search%'";
    return await db!.rawQuery(query);
  }
}
