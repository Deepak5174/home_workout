import 'package:flutter/material.dart';
import 'package:home_workout/11-09%20sflite%20operation/sqflite%20operation%20me.dart';


class sqflitehomePage extends StatefulWidget {
  const sqflitehomePage({super.key});

  @override
  State<sqflitehomePage> createState() => _sqflitehomePageState();
}

class _sqflitehomePageState extends State<sqflitehomePage> {
  var isLoading = true;
  List<Map<String, dynamic>> contacts = [];
  @override
  void initState() {
    loadui();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyContacts"),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(contacts[index]['cname']),
                    subtitle: Text(contacts[index]['cnumber']),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        //create a new data so the ID will be NULL
        onPressed: () => showSheet(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final name_cntrl = TextEditingController();
  final phone_cntrl = TextEditingController();

  void showSheet(int? id) async {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              children: [
                TextField(
                  controller: name_cntrl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name"),
                ),
                TextField(
                  controller: phone_cntrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Phone Number",
                   
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await createContact();
                      }
                      if (id != null) {
                        // await updateContact(id);
                      }
                      name_cntrl.text = "";
                      phone_cntrl.text = "";
                      // ignore: use_build_context_synchronously
                      Navigator.pop(context);
                    },
                    child:
                        Text(id == null ? "Create contact" : "update contact"))
              ],
            ),
          );
        });
  }

  Future<void> createContact() async {
    var id = await SQLHelper.create_contact(name_cntrl.text, phone_cntrl.text);
    print(id);
  }

  void loadui() async {
    final data = await SQLHelper.readcontact();
    setState(() {
      contacts = data;
      isLoading = false;
    });
  }
}
void main(){
  runApp(MaterialApp(
    home:sqflitehomePage() ,
  ));
}
