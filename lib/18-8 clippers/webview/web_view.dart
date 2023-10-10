import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class web_view extends StatefulWidget {
  const web_view({super.key});

  @override
  State<web_view> createState() => _web_viewState();
}

class _web_viewState extends State<web_view> {
  late WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.dji.com"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("web view"),
        // ),
        body: WebViewWidget(controller: controller));
  }
  
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: web_view(),
  ));
}
