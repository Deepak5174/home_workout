import 'package:flutter/material.dart';

class DOSwidget extends StatelessWidget {
  final ImageProvider myimage;
  final String name;
  final String price;
  const DOSwidget({
    required this.myimage,
    required this.name,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(
            image: myimage,
            width: 100,
            height: 100,
          ),
          Text(name),
          Text(price),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children:[
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  label: Text("Wish")),
              SizedBox(
                width: 5,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: Text("Buy",))
            ],
          )
        ],
      ),
    );
  }
}
