import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_workout/api%20integration/api%20dio/model/datamodel.dart';
import 'package:home_workout/api%20integration/api%20dio/service/dio_service.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class datacontroller extends GetxController {
  RxList<Quotes> datas = RxList();
  RxBool isListDown = false.obs;
  RxBool isloading = true.obs;
  RxBool isnetconnected = true.obs;
  var url = "https://jsonplaceholder.typicode.com/posts";

  var ItemController = ItemScrollController();
  isinternetconnected() async {
    isnetconnected.value = await InternetConnectionChecker().hasConnection;
  }

// to get all the data from api
  fetchData() async {
    isinternetconnected();
    isloading.value = true;
    var response = await dioservice().getData(url);

    if (response.statusCode == 200) {
      response.data.forEach((element) {
        datas.add(Quotes.fromJson(element));
      });
      isloading.value = false;
    }
  }
  // scroll ListView to down

  ScrollToDown() {
    ItemController.scrollTo(
        index: datas.length,
        duration: Duration(seconds: 2),
        curve: Curves.decelerate);
    isListDown.value = true;
  }

  // scroll listview ti up
  ScrollToup() {
    ItemController.scrollTo(
        index: 0,
        duration: Duration(seconds: 2),
        curve: Curves.easeInOutQuart);
    isListDown.value = false;
  }
  @override
  void onInit() {
   fetchData();
   isinternetconnected();
    super.onInit();
  }
}
