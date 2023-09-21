

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:home_workout/assignment/whatsapp.dart';

class whatsapp_tab extends StatelessWidget {
  const whatsapp_tab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Whats app",style: TextStyle(fontSize: 20),
      
      ),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
      SizedBox(width: 2,),
      PopupMenuButton(itemBuilder: (context){
        return[
          PopupMenuItem(child: ListTile(title: Text("Creat group"),
          minLeadingWidth: 20,
          leading: Icon(Icons.create_rounded),
          
          ),),
           PopupMenuItem(child: ListTile(title: Text("New chat"),
           minLeadingWidth: 20,
          leading: Icon(Icons.chat_bubble),
          ),),
           PopupMenuItem(child: ListTile(title: Text("settings"),
           minLeadingWidth: 20,
          leading: Icon(Icons.settings),
          ),),
           PopupMenuItem(child: ListTile(title: Text("About"),
           minLeadingWidth: 20,
          leading: Icon(Icons.info_outline),
          ),),

        ];
      })
      ],
      bottom: TabBar(
        // indicatorSize: TabBarIndicatorSize.label,
        labelPadding: EdgeInsets.zero,
        tabs: [
         
        SizedBox(
          width: MediaQuery.of(context).size.width*.10,
          child: FaIcon(FontAwesomeIcons.userGroup)),
        SizedBox(
           width: MediaQuery.of(context).size.width*.30,
          child: Text("Status")),
        SizedBox(
          width: MediaQuery.of(context).size.width*.30,
          child: Text("Chats")),
        SizedBox(
          width: MediaQuery.of(context).size.width*.30,
          child: Text("Calls"))
      ]),
      ),
      
      body: TabBarView(children: [
      whatsapp(),
      
      
      ]),
    ));
  }
}
void main(){
  runApp(MaterialApp(
    home: whatsapp_tab(),
  ));
}