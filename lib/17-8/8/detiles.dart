import 'package:flutter/material.dart';
import 'package:home_workout/17-8/8/dummy_data.dart';

class productdetails extends StatelessWidget {
  const productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;// to collect value from page/ route
   final produtfromlist = products.firstWhere((element) =>element['id']==id ,);
    return Scaffold(
      appBar: AppBar(
        title: Text("shop now"),
      ),
    );
  }
}