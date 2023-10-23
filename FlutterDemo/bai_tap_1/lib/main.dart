import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            rowMethod(MainAxisAlignment.spaceBetween, Alignment.bottomRight,
                Alignment.bottomLeft),
            rowMethod(MainAxisAlignment.spaceBetween, Alignment.topRight,
                Alignment.topCenter),
          ],
        ),
        Center(child: boxMethod("Hello World", Alignment.center, true)), //
      ]),
    );
  }

  Row rowMethod(
      MainAxisAlignment direction, Alignment alignment1, Alignment alignment2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        boxMethod("Box 1", alignment1),
        boxMethod("Box 2", alignment2),
      ],
    );
  }

  Container boxMethod(String name, Alignment direction,
      [bool boxRadius = false]) {
    return Container(
      decoration: BoxDecoration(
          color: boxRadius ? Colors.amber : Colors.green,
          borderRadius: BorderRadius.circular(boxRadius ? 100 : 0)),
      // decoration: const BoxDecoration(color: Colors.amber),

      alignment: direction,
      width: 160,
      height: 160,
      child: Text(
        name,
        style: const TextStyle(fontSize: 24, color: Colors.red),
      ),
    );
  }
}
