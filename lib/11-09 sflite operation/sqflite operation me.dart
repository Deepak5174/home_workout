 import 'package:sqflite/sqflite.dart'as sql;
 class SQLHelper {
  static Future<sql.Database> CreateDB()async{
    return sql.openDatabase('mycontact.db',version:1,
    onCreate: (sql.Database database, int version)async{
      await createTable(database);
    }
    );


  }
  static Future <void>createTable(sql.Database database) async{
    await database.execute("""CREATE TABLE contacts(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
      cname TEXT,
      cnumber TEXT,
      createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)"""
    );
  }
static Future<int> create_contact(String name, String phone)async{
  final db =await SQLHelper.CreateDB();
  final data = {'cname':name,'cnumber':phone};
  return  await db.insert("contacts",data,);
  
}

  static readcontact() {}
   
 }