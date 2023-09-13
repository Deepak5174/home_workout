import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:home_workout/11-09%20sflite%20operation/sqflite%20operation%20me.dart';

class sqfui extends StatefulWidget {
  const sqfui({super.key});

  @override
  State<sqfui> createState() => _sqfuiState();
}

class _sqfuiState extends State<sqfui> {
  var isloading = true;
  List<Map<String, dynamic>> Contacts = [];
  @override
  void initState() {
   loadui();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("My Contacts"),
      ),
      body: isloading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: Contacts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showsheet(null),
        child: Icon(Icons.add),
      ),
    );
  }

  final namectrl = TextEditingController();
  final phonectrl = TextEditingController();

  void showsheet(int? id) async {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: namectrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "name"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: phonectrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Phone"),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await createContact();
                      }
                      if (id != null) {}
                    },
                    child:
                        Text(id == null ? "Create Contact" : "Update Contact"))
              ],
            ),
          );
        });
  }

  Future<Void> createContact() async {
    var id = await SQLHelper.create_contact(namectrl.text, phonectrl.text);
  }
}
void loadui()async{
  final data =await SQLHelper.readcontact();

}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: sqfui()));
}
