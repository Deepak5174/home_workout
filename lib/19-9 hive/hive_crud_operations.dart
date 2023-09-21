import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("to_do_Box");
  runApp(MaterialApp(
    home: Hive_crud(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hive_crud extends StatefulWidget {
  const Hive_crud({super.key});

  @override
  State<Hive_crud> createState() => _Hive_crudState();
}

class _Hive_crudState extends State<Hive_crud> {
  List<Map<String, dynamic>> task = [];
  final mybox = Hive.box("to_do_box");
  @override
  void initState() {
    load_or_read_task();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive"),
      ),
      body: task.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (context, index) {
                final mytask = task[index];
                return Card(
                  child: ListTile(
                    title: Text(mytask['taskname']),
                    subtitle: Text(mytask['taskcontent']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              showTask(context, mytask['id']);
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              delatetask(mytask['id']);
                            },
                            icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showTask(context, null),
        label: Text("Create task"),
        icon: Icon(Icons.add),
      ),
    );
  }

  final task_controller = TextEditingController();
  final contennt_controller = TextEditingController();

  void showTask(BuildContext context, int? itemkey) {
    if (itemkey != null) {
      final existingtask =
          task.firstWhere((element) => element['id'] == itemkey);
      task_controller.text = existingtask['taskname'];
      contennt_controller.text = existingtask['taskcontent'];
    }
    //it simeler to id in sqflite
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: task_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Create Task"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: contennt_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Task content"),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (task_controller.text != "" &&
                          contennt_controller.text != "") {
                        if (itemkey == null) {
                          createTask({
                            'name': task_controller.text.trim(),
                            'content': contennt_controller.text.trim()
                          });
                        } else {
                          updateTasks(itemkey, {
                            'name': task_controller.text.trim(),
                            'content': contennt_controller.text.trim(),
                          });
                        }
                      }
                      contennt_controller.text = "";
                      task_controller.text = "";
                      Navigator.of(context).pop();
                    },
                    child:
                        Text(itemkey == null ? 'Create task' : 'Update task'))
              ],
            ),
          );
        });
  }

  void createTask(Map<String, dynamic> task) async {
    await mybox.add(task);
    load_or_read_task();
  }

  void updateTasks(int? itemkey, Map<String, String> uptask) async {
    await mybox.put(itemkey, uptask);
    load_or_read_task();
  }

  void load_or_read_task() {
    final task_from_hive = mybox.keys.map((Key) {
      final value = mybox.get(Key);
      return {
        'id': Key,
        'taskname': value['name'],
        'taskcontent': value['content']
      };
    }).toList();
    setState(() {
      task = task_from_hive.reversed.toList();
    });
  }

  Future<void> delatetask(int itemkey) async {
    await mybox.delete(itemkey);
    load_or_read_task();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("successfully deleted !")));
  }
}
