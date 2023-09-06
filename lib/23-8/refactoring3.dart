import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: refactoring(),
  ));
}

class refactoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("refactoring"),
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return myRefactoringWidget(
                rimage: Image.network(
                    "https://images.unsplash.com/photo-1688560722687-7d4d5fb8ff8f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
                label: Text(
                  "office",
                  style: GoogleFonts.dancingScript(
                      fontSize: 20, color: Colors.grey),
                ),
              );
            }));
  }
}

class myRefactoringWidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? rimage;
  VoidCallback? onclick;
  Widget? label;
  Widget? ricon;
  myRefactoringWidget({
    this.bgcolor,
    required this.rimage,
    this.label,
    this.onclick,
    this.ricon,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Center(
        child: ListTile(
          title: label,
          leading: rimage,
          onTap: onclick,
          trailing: ricon,
        ),
      ),
    );
  }
}
