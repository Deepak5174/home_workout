import 'package:flutter/material.dart';

class extendedview extends StatelessWidget {
  const extendedview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1694467666983-3fa4a29e7ecf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
          ),
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1528290609362-f0d60b921d7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1885&q=80"),
          ),
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1659672548875-dbe2c00f9681?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
          ),
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1530044702134-fb72deb2b3ce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: extendedview()));
}
