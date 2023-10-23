import 'package:flutter/material.dart';

class ModalBottom extends StatelessWidget {
  ModalBottom({super.key, required this.addTask});

  final Function addTask;
  TextEditingController textValue = TextEditingController();
  void _handleOnclick() {
    final name = textValue.text;
    addTask(name);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextField(
                controller: textValue,
                // onChanged: (value) {
                //   textValue = value;
                // },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Your task"),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: _handleOnclick, child: const Text('Add Task')))
            ],
          ),
        ));
  }
}
