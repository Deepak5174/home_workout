import 'package:flutter/material.dart';

class viewlist2 extends StatelessWidget {
  var name = [
    "Deepak",
    'sethu',
    'vishnu',
    "sreelakhmi",
    "sthilakshmi",
    "shiva",
    "kingini",
    "Prem",
    "arun",
    "JK"
  ];
  var time = [
    "9:45",
    '10:23',
    "9:45",
    '10:23',
    "9:45",
    '10:23',
    "9:45",
    '10:23',
    "9:45",
    '10:23',
  ];
  var image = [
    "https://images.unsplash.com/photo-1551836022-deb4988cc6c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80",
    "https://images.unsplash.com/photo-1551836022-deb4988cc6c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80",
    "https://images.unsplash.com/photo-1551836022-deb4988cc6c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80",
    "https://images.unsplash.com/photo-1551836022-deb4988cc6c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80",
    "https://images.unsplash.com/photo-1551836022-deb4988cc6c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://images.unsplash.com/photo-1551836022-deb4988cc6c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view"),
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => Card(
                  child: ListTile(
                      title: Text(name[index]),
                      subtitle: Text(time[index]),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(image[index]),
                      ),
                      trailing:
                          //  Icon(Icons.abc),
                          Row(
                            verticalDirection: VerticalDirection.up,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.call_missed),
                      ),
                      SizedBox(width: 2,),
                              IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.call_end_outlined),
                      ),
                            ],
                          )),
                )),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: viewlist2(),
  ));
}
