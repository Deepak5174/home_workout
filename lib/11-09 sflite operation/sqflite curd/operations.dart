import 'package:sqflite/sqflite.dart' as sql;

class Sqlhelp {
  static Future<sql.Database> CreateDB() async {
    return sql.openDatabase("mydatabase.db", version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute(
        '''CREATE TABLE user (id INTEGER PRIMARY KEY AUTOINCREMENT ,E mail TEXT NOT NULL,password TEXT NOT NULL )''');
  }
}
