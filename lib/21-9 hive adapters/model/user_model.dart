import 'package:hive/hive.dart';
part 'user_model.g.dart';
@HiveType(typeId: 1)
class user {


  @HiveField(0)
  final String email;



  @HiveField(1)
  final String password;

    @HiveField(2)
  final String name;

  @HiveField(3)
  final String age;

  @HiveField(4)
   String? id;

user({required this.email,required this.password , required this.name, required this.age}){
  id =DateTime.now().microsecondsSinceEpoch.toString();
}
}