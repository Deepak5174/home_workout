import 'package:flutter/material.dart';
import 'package:home_workout/17-8/8/dummy_data.dart';
import 'package:home_workout/practice/passing%20data%20btw%20screens/data%20dummy.dart';

class productdetails extends StatelessWidget {
  const productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context)?.settings.arguments;// to collect value from page/ route
   final produtfromlist = products.firstWhere((element) =>element['id']==productid);
    return Scaffold(
      appBar: AppBar(
        title: Text(produtfromlist['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(produtfromlist['image1']))
              ),
            ),
            Text(produtfromlist['name']),
            Text(produtfromlist['discription']),
            Text('\$ ${produtfromlist['price']}'),
            Text('${produtfromlist['rating']}')
          ],
        ),
      ),
    );
  }
}