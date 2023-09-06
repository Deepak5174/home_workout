import 'package:flutter/material.dart';

class splashcolumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.access_alarms_rounded,
              size: 60,
              color: Colors.blueGrey,
            ),
            Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/512px-Logo_of_Twitter.svg.png?20220821125553",
              height: 100,
              width: 100,
            ),
            const Text(
              "Holla",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: splashcolumn(),
  ));
}
