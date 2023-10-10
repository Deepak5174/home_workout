import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:home_workout/api%20integration/api%20integration_http/model/productmodel.dart';

class productTile extends StatelessWidget {
  final ProductModel product;
  productTile(this.product);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: CachedNetworkImage(
              imageUrl: product.image!,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.title!,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          maxLines: 1,),
        
          Text(
            '${product.price}',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
