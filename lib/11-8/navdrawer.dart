import 'package:flutter/material.dart';


class navdrawer extends StatelessWidget {
  const navdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    home:navdrawer() ,
  ));
}
