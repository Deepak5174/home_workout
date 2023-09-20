import 'package:flutter/material.dart';

class sliversss extends StatelessWidget {
  const sliversss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
              floating: true,
              pinned: true,
              title: Text("Sliver appbar"),
              bottom: AppBar(
                title: Container(
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  height: 30,
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        //  border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(20)
                        // ),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search Here",
                        suffixIcon: Icon(Icons.camera_alt)),
                  ),
                ),
              )),
          // SliverList(delegate: SliverChildBuilderDelegate((context, index) => Card(
          //   child: Text("holla"),
          // )))
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) => Card(
                elevation: 8,
                
                child: Align(
                  alignment: Alignment.center,
                  child: Text("holla",)),
              ),
              childCount: 10,
              ),
              
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                // childAspectRatio: 2.0,
              )
              ),
              SliverList(delegate: SliverChildBuilderDelegate((context, index) => Card(
                child: ListTile(   
                  title: Text("holla"),
                  subtitle: Text("hi"),
                )

              ), childCount: 5,
              )
              )
        ],
      )),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sliversss(),
  ));
}
