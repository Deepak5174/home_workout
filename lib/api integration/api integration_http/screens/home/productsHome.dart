import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_workout/api%20integration/api%20integration_http/controller/product_controller.dart';
import 'package:home_workout/api%20integration/api%20integration_http/screens/home/widgets/productTile.dart';

void main() {
  runApp(MaterialApp(
    home: productHome(),
  ));
}

class productHome extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("products"),
      ),
      body: SizedBox(
        child: Obx(() {
          //obx is to make the widget observable
          if (productController.isloading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
              itemCount:productController.productList.length ,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return productTile(productController.productList[index]);
                });
          }
        }),
      ),
    );
  }
}
