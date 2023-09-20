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
        '''CREATE TABLE user (id INTEGER PRIMARY KEY AUTOINCREMENT ,cname TEXT NOT NULL,cpassword TEXT NOT NULL )''');
  }

  static Future<int> create_user(String uname, String password) async{
    final db=await Sqlhelp.CreateDB();
    final data={"cname":uname,"cpass":password};
    final id =await db.insert("user", data);
    return id ;
    
  }
}
