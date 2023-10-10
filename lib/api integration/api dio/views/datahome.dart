import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:home_workout/api%20integration/api%20dio/controller/data_controller.dart';
import 'package:http/http.dart';
import 'package:lottie/lottie.dart';

class Data_Home extends StatelessWidget {
  const Data_Home({super.key});

  @override
  Widget build(BuildContext context) {
    datacontroller controller =Get.put(datacontroller());
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
    body: Obx(() => SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: controller .isnetconnected.value?
      (controller.isloading.value ? loadingAnimation():getData)
    )),
    );
  }
}
