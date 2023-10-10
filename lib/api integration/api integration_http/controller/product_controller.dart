import 'dart:ffi';

import 'package:get/get.dart';
import 'package:home_workout/api%20integration/api%20integration_http/service/api_service.dart';

class ProductController extends GetxController {
  // obs- observable
  var isloading =true.obs;
  var productList = [].obs;
  
  @override
  void onInit() {
   GetProducts();
    super.onInit();
  }
 void GetProducts()async{
 try {
  isloading(true);
  var products =await HttpService.fetchproducts();
  if (products!=null) {
    productList.value = products;
    
  }
   
 } catch (e) {
  print(e);
   
 }finally{
  isloading(false);
 }
 }
 
}

  

  
