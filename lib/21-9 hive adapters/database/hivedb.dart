import 'package:hive_flutter/adapters.dart';
import 'package:home_workout/21-9%20hive%20adapters/model/user_model.dart';

class HiveDb {
  HiveDb.internal();
  static HiveDb instance =HiveDb.internal();
  factory HiveDb(){
    return instance;
  }
  
}
Future <void> adduser(user user)async{
  final db = await Hive.openBox<user>('userData');
  db.put(user.id, user);
}

Future<List<user>>getUser()async{
  final db =await Hive.openBox<user>('userdata');
  return db.values.toList();
}