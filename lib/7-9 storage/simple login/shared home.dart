import 'package:flutter/material.dart';
import 'package:home_workout/7-9%20storage/simple%20login/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedhome extends StatefulWidget {
  const sharedhome({super.key});

  @override
  State<sharedhome> createState() => _sharedhomeState();
}

class _sharedhomeState extends State<sharedhome> {
  late SharedPreferences preferences;
  late String username;
  
  @override
  void initState() {

    // TODO: implement initState
    fetchdData();
    
    super.initState();
  }
  void fetchdData()async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username=preferences.getString('uname')!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://img.freepik.com/free-psd/tropical-foliage-background_53876-91352.jpg?w=996&t=st=1694078907~exp=1694079507~hmac=547d1be694c8bae276bb38836b1ea7c0b5fbc62052fb1ca596689b6cc03c2f35"))),
        
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: Text("welcome $username",style: TextStyle(
                  fontSize: 30,color: Color.fromARGB(255, 255, 255, 255),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300 ),
                child: ElevatedButton(onPressed: (){
                 preferences.setBool("newuser", true);
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>login_shared()));
                }, child: Text("Log out")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
