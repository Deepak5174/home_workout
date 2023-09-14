import 'package:flutter/material.dart';

class sliversss extends StatelessWidget {
  const sliversss({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:CustomScrollView(slivers: [
       SliverAppBar(
        floating: true,
        pinned: false,
        title: Text("Sliver appbar"),
        bottom: AppBar(
          title: Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            width:double.infinity,
            height: 30,
            color: Colors.white,
            child: TextFormField(decoration: const InputDecoration(
              
              hintText: "Search hear",
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.camera_alt)
            )),
            
          ),
        )
       ) 
      ],) ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sliversss(),
  ));
}