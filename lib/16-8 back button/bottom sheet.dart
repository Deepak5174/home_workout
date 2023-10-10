import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bottom_sheet extends StatelessWidget {
  const bottom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            //or you can use inkwell
            onLongPress: () => showsheet(context),
            child: Image.asset("assets/image/mountaion.jpg")),
      ),
    );
  }

  void showsheet(
    BuildContext context,
  ) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.whatsapp),
                  iconColor: Colors.green,
                  title: Text("Whats app"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.facebook),
                  iconColor: Colors.blue,
                  title: Text("Facebook"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.twitter),
                  iconColor: Colors.blue,
                  title: Text("Twitter"),
                )
              ],
            ),
          );
        });
  }
}

void main() {
  runApp(MaterialApp(
    home: bottom_sheet(),
  ));
}
