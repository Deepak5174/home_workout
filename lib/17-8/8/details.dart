
import 'package:flutter/material.dart';
import 'package:home_workout/17/8/dummy%20data.dart';

class details extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    final productid= ModalRoute.of(context)?.settings.arguments;

    final productfromlist= Products.firstWhere((element) => element['id']==productid);
    return Scaffold(
      appBar: AppBar(
        title: Text("flipkart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(productfromlist['image1']))
            ),
            ),
            Text(productfromlist['name'],
            style: TextStyle(fontSize: 30,),),
            Text(productfromlist['discription'],
            style: TextStyle(fontSize: 20),),
            Text("${productfromlist['price']}",style: TextStyle(fontSize: 20),),


            
          ],
        ),
      ),
    );
  }
}