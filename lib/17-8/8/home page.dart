
import 'package:flutter/material.dart';
import 'package:home_workout/17/8/details.dart';
import 'package:home_workout/17/8/dummy%20data.dart';

class prducthome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shop Now"),
      ),
      body: ListView(
        children: Products.map((items) => Card(
              child: (ListTile(
                 leading: 
                //  CircleAvatar(backgroundImage: NetworkImage((items["image1"])),),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage( 
                    
                    
                    image: NetworkImage(items["image1"]),
                 fit: BoxFit.cover,
                  ), 
                  // borderRadius: BorderRadius.all(Radius.circular(200)),
                  
                  
                  ),
                ),
                title: Text(items["name"]),
                subtitle: Text("${items["price"]}"),
                onTap: () {
                  gotoNextPage(context,items["id"]);
                },
              )),
            )).toList(),
      ),
    );
  }
  
  void gotoNextPage(BuildContext context, productid) {
    Navigator.pushNamed(context, 'details', arguments: productid);

  }
}

void main() {
  runApp(MaterialApp(
    home: prducthome(),
    routes: {
      'details':(context) =>details()
    },
  ));
}
