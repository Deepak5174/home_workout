import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class c_slider extends StatelessWidget {
  const c_slider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("carousel slider")),
      body: CarouselSlider(
        items: [
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1694284028434-2872aa51337b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
          )),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1682685796002-e05458d61f07?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1771&q=80")))),
           Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage((
              "https://images.unsplash.com/photo-1603584173870-7f23fdae1b7a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1769&q=80"))))),
           Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage((
              "https://images.unsplash.com/photo-1627508795178-e852bd067a72?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"))))),
        ],
        options: CarouselOptions(
          initialPage: 0,
          height: 200,
          aspectRatio: 16 / 9,
          viewportFraction: .5,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: .2,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: c_slider(),
  ));
}
