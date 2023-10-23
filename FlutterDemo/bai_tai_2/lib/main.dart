import 'package:bai_tai_2/model/items.dart';
import 'package:bai_tai_2/widget/card_body.dart';
import 'package:flutter/material.dart';

import 'package:bai_tai_2/widget/card_model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blueAccent,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItems> items = [];

  void _handleAddTask(String name) {
    final newItem = DataItems(DateTime.now().toString(), name);
    setState(() {
      items.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "TodoList",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: items.map((item) => CardWidget(item: item)).toList(),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.grey[400],
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              isScrollControlled: true,
              context: context,
              builder: (BuildContext content) {
                return ModalBottom(addTask: _handleAddTask);
              });
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
