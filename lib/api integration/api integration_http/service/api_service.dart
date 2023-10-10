import 'package:home_workout/api%20integration/api%20integration_http/model/productmodel.dart';
import 'package:http/http.dart'as http;
class HttpService {
  static Future<List<ProductModel>>fetchproducts()async{
    var response =await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode==200) {
      var data =response.body;
      return productModelFromJson(data);

      
    }else{
      throw Exception();
    }
  }
  
}