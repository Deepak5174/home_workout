import 'package:flutter/material.dart';

class whatsapp extends StatelessWidget {
  var name = [
    "Deepak",
    'sethu',
    'vishnu',
    "sreelakhmi",
    "sethulakshmi",
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
  var msg = [
    'hi',
    'hello',
    'hey there',
    'hi',
    'hello',
    'hey there',
    'hi',
    'hello',
    'hey there',
    'hi',
  ];
  var count = [
    '2',
    '1',
    '4',
    '2',
    '1',
    '4',
    '2',
    '1',
    '4',
    '3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 170, 69),
        title: const Text("Whats app"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
        PopupMenuButton(itemBuilder: (context){
          return[
            const PopupMenuItem(child: Card(
              child: ListTile(title: Text("Settings"),
              leading: Icon(Icons.settings),
              ),
            )),
            const PopupMenuItem(child: Card(
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.info_outline),
              ),
            )),
            const PopupMenuItem(child: Card(
              child: ListTile(title: Text("More"),
              leading: Icon(Icons.more),),
            ))
          ];
        })
        ],
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => Card(
                  child: ListTile(
                    title: Text(name[index]),
                    subtitle: Text(msg[index]),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(image[index]),
                    ),
                    trailing: Wrap(
                        direction: Axis.vertical,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Text(count[index]),
                            minRadius: 8,
                            maxRadius: 10,
                            backgroundColor: Colors.green,
                          ),
                          Text(time[index])
                        ]),
                  ),
                )),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: whatsapp(),
  ));
}
