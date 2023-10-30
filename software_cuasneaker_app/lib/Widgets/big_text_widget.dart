import 'package:flutter/material.dart';

class BigTextWidgets extends StatelessWidget {
  final String text;
  final Color? color;
  double? size;
  TextOverflow overflow;
  BigTextWidgets({
    super.key,
    required this.text,
    this.size = 16,
    this.overflow = TextOverflow.ellipsis,
    this.color = const Color.fromARGB(255, 215, 99, 4),
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: 1,
        overflow: overflow,
        style: TextStyle(
            color: color,
            fontFamily: 'Roboto',
            fontSize: size,
            fontWeight: FontWeight.w400));
  }
}
