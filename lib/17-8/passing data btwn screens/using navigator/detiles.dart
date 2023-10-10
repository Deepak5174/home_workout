import 'package:flutter/material.dart';
import 'package:home_workout/17-8/passing%20data%20btwn%20screens/using%20navigator/dummy_data.dart';


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