import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blueAccent
    ),
    home: MyWidget(),
  ));
}

// ignore: use_key_in_widget_constructors
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("read more read less"),
      ),
      body: const Column(
        children: [
          ReadMoreText(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              trimLines: 4,
              preDataText: 'AMANDA',
              style: TextStyle(
                color: Colors.grey,
              ),
              colorClickableText: Colors.blueAccent,
              trimMode: TrimMode.Line,
              trimCollapsedText:"more" ,
              trimExpandedText:"less" ,

              
              ),
        
        ],
      ),
    );
  }
}
