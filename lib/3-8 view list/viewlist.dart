import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class viewlist extends StatelessWidget {
  const viewlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list view"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "shop here",
            style: GoogleFonts.abel(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.purpleAccent),
          )),
          const Card(
            child: ListTile(title: Text("Jacket"),
            subtitle: Text("\$1200"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixelbin.io/v2/black-bread-289bfa/woTKH5/wrkr/t.resize(h:1000,w:820)/data/Superdry/13032023img/410381185001_1.jpg")),
            trailing: FaIcon(FontAwesomeIcons.cartShopping),
            ),
          ),
          const Card(
            child: ListTile(title: Text("spry"),
            subtitle:Text("\$49") ,
            leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixelbin.io/v2/black-bread-289bfa/woTKH5/wrkr/t.resize(h:1000,w:820)/data/Superdry/01062023/410270333001_1.png")),
            trailing: FaIcon(FontAwesomeIcons.cartShopping),
            ),
          ),
          const Card(
            child: ListTile(title: Text("item3"),
            subtitle: Text("\$600"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixelbin.io/v2/black-bread-289bfa/woTKH5/wrkr/t.resize(h:1000,w:820)/data/Superdry/18-08-2023/410381194005_1.jpg")),
            trailing: FaIcon(FontAwesomeIcons.cartShopping),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: viewlist(),
  ));
}
