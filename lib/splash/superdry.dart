import 'package:flutter/material.dart';

class superdry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1692555052035-1a3116e30ba5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1965&q=80")),
        ),
        height: double.infinity,
        width: double.infinity,
        child:

            // mainAxisAlignment: MainAxisAlignment.center,

            Image.network(
                "https://www.thebrandingjournal.com/wp-content/uploads/2016/03/superdry-brand-the-branding-journal-3-1024x683.png"),

        // Align(
        //   heightFactor:30 ,
        //   alignment: FractionalOffset.bottomCenter,
        //   child: Text("japan"),
        // )
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: superdry()));
}
