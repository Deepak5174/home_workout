import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class phonebook extends StatelessWidget {
  const phonebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone book"),
      ),
      body: ListView(
        children: const [
        Card(
          child: ListTile(
            title: Text("Gauri"),
            subtitle: Text("Mobile,2:39 PM"),
            
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         Card(
          child: ListTile(
            title: Text("Arun ajayakumar"),
            subtitle: Text("Missed call,12:34PM", style:TextStyle(color: Colors.red)  ,),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         Card(
          child: ListTile(
            title: Text("Broski"),
            subtitle: Text("Mobile,10:45 PM"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1536&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         Card(
          child: ListTile(
            title: Text("Gauri"),
            subtitle: Text("Mobile,7:39 PM"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         Card(
          child: ListTile(
            title: Text("Gauri"),
            subtitle: Text("Mobile,5:58 PM"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         Card(
          child: ListTile(
            title: Text("Gauri"),
            subtitle: Text("Mobile,5:19 PM"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         Card(
          child: ListTile(
            title: Text("Gauri"),
            subtitle: Text("Mobile,4:49 PM"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         Card(
          child: ListTile(
            title: Text("Gauri"),
            subtitle: Text("Mobile,4:3 PM"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         Card(
          child: ListTile(
            title: Text("Gauri"),
            subtitle: Text("Mobile,3:20 PM"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         Card(
          child: ListTile(
            title: Text("Gauri"),
            subtitle: Text("Mobile,2:39 PM"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
            trailing:FaIcon(FontAwesomeIcons.phone) ,
          ),
        ),
         
        ],
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    home: phonebook(),
  ));
}