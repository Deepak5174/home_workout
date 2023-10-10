import 'package:flutter/material.dart';

class personalWidget extends StatelessWidget {
  ImageProvider myimage;
  String name;
  String Subname;
  
  personalWidget(
      {super.key,
      required this.myimage,
      required this.name,
      required this.Subname});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(image: myimage,height: 100,),
          Text(name),
          Text(Subname),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  label: Text("Wishlist", style: TextStyle(fontSize: 10))),
              SizedBox(
                width: 2,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  label: Text(
                    "Buy now",
                    style: TextStyle(fontSize: 10),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}