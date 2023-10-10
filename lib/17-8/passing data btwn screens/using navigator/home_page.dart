import 'package:flutter/material.dart';
import 'package:home_workout/17-8/passing%20data%20btwn%20screens/using%20navigator/detiles.dart';
import 'package:home_workout/17-8/passing%20data%20btwn%20screens/using%20navigator/dummy_data.dart';

class producthome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop now"),
      ),
      body: ListView(
        children: products
            .map((productonebyone) => Card(
                  child: ListTile(
                    leading: Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    NetworkImage(productonebyone["image1"])))),
                    title: Text(productonebyone["name"]),
                    subtitle: Text("\$ ${productonebyone['price']}"),
                    onTap: () {
                      gotonextpage(context, productonebyone['id']);
                    },
                  ),
                ))
            .toList(),
      ),
    );
  }

  void gotonextpage(BuildContext context, productid) {
    Navigator.pushNamed(context, 'details', arguments: productid);
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: producthome(),
    routes: {'details': (context) => productdetails()},
  ));
}
