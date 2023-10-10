
import 'package:flutter/material.dart';
import 'package:home_workout/Storages%20in%20flutter/Shared_Preferences/simple%20login%20using%20shared%20prefrences/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class shared_homie extends StatefulWidget {
  const shared_homie({super.key});

  @override
  State<shared_homie> createState() => _shared_homieState();
}

class _shared_homieState extends State<shared_homie> {
  late SharedPreferences preferences;
  late String name;

  @override
  void initState() {
    fetchdata();//when the second page loads this method will exicute
    super.initState();
  }
    void fetchdata()async {
      preferences =await SharedPreferences.getInstance();
      setState(() {
        name =preferences.getString('adminname')!;// fetch the value from shared preferences
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("welcome $name",style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              preferences.setBool('newuser', true);
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>loginShared()));
            }, child: Text("logout")),
          ],
        ),
      ),

    );
  }
  

}