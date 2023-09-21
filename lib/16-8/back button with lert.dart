

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class backbutton extends StatelessWidget {
  const backbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Alert(context),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Exit app alert"),
          ),
          body: Center(
            child: SvgPicture.asset(""),
          ),
        ));
  }

  Future<bool> Alert(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return
          AlertDialog(
            title: Text("Exit"),
            content: Text("do you realy want to exit"),
            actions: [
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop(true);
              }, child: Text("Yes")),
              ElevatedButton(onPressed: () {
                 Navigator.of(context).pop(false);
              }, child: Text("No")),
              ElevatedButton(onPressed: () {
                 Navigator.of(context).pop(false);
              }, child: Text("Cancel")),
            ],
          );
        });
  }
} 

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: backbutton(),
  ));
}
