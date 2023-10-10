

import 'package:flutter/material.dart';
import 'package:home_workout/5-8%20list%20view%20custom/listview%20custom.dart';

class playlist extends StatefulWidget {
  const playlist({super.key});

  @override
  State<playlist> createState() => _playlistState();
}

class _playlistState extends State<playlist> {
  int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Playlist"),
            centerTitle: true,
            bottom: AppBar(title: Container(
              width: double.infinity,
              height: 30,
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search here"
                ),
              ),
            )),
            
          ),
      //     BottomNavigationBar(
      //       selectedItemColor: Colors.redAccent,
      //       backgroundColor: Colors.grey,
      //       type: BottomNavigationBarType.fixed,
      //       currentIndex: index,
      //       onTap: (tappedindex){
      //         setState(() {
                
      //           index=tappedindex;
      //         });
      //       },
      //       items: [
      //          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
      //  BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
      //   BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "Profile"),
      //    BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
             
      //     ])

        ],
        
        
      )),
      
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: playlist(),
  ));
}