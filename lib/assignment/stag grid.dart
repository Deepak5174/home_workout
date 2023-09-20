import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Stag_grid extends StatelessWidget {
  const Stag_grid({super.key, required Color color1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("view"),
        ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
              crossAxisCount: 4,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://images.unsplash.com/photo-1693831828519-ef73eb723f0f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80",
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const ListTile(
                          title: Text("world wonders"),
                          subtitle: Text(
                              "The list of the seven (actually, eight) wonders of the world "),
                        )
                      ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: Card(
                    child: ListView(
                      children: [
                        Image.network(
                            "https://images.unsplash.com/photo-1528291151377-165f5107c82a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1885&q=80"),
                        const ListTile(
                          title: Text("An empire of Unite..."),
                          subtitle: Text(
                              "19-jan-2023               earnest hemingway"),
                        )
                      ],
                    ),
                  ),
                ),
                 StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: Card(
                    child: ListView(
                      children: [
                        Image.network(
                            "https://images.unsplash.com/photo-1662947683395-1ce33bdcd094?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1856&q=80"),
                        const ListTile(
                          title: Text("Nvidia Geforce..."),
                          subtitle: Text(
                              "24-aug-2023               Nvidia announces new RTX graphics cards"),
                        )
                      ],
                    ),
                  ),
                ),
                 StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: Card(
                    child: ListView(
                      children: [
                        Image.network(
                            "https://images.unsplash.com/photo-1585184394271-4c0a47dc59c9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1771&q=80"),
                        const ListTile(
                          title: Text("Apple announces new iphone 15..."),
                          subtitle: Text(
                              "12-sep-2023               USA, California."),
                        )
                      ],
                    ),
                  ),
                ),
                 StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: Card(
                    child: ListView(
                      children: [
                        Image.network(
                            "https://images.unsplash.com/photo-1611651338412-8403fa6e3599?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1771&q=80",
                            
                            ),
                        const ListTile(
                          title: Text("Porsche 911 Turbo S in Amsterdam...",textAlign: TextAlign.left),
                          subtitle: Text(
                              "19-jan-2019               earnest hemingway",textAlign: TextAlign.left),
                        )
                      ],
                    ),
                  ),
                ),
                 StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: Card(
                    child: ListView(
                      children: [
                        Image.network(
                            "https://images.unsplash.com/photo-1569104204151-5f6acfafadce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1854&q=80"),
                        const ListTile(
                          title: Text("Burj khalifa Dubai..."),
                          subtitle: Text(
                              "19-jan-2019               UAE, Dubai"),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
        ));
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stag_grid(),
  ));
}
