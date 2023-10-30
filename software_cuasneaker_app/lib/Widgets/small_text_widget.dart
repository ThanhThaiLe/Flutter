import 'package:flutter/material.dart';
import 'package:software_cuasneaker_app/utils/colors.dart';

class SmallTextWidgets extends StatelessWidget {
  final String text;
  final Color? color;
  double? size;
  double? height;
  SmallTextWidgets({
    super.key,
    required this.text,
    this.size = 14,
    this.height = 1.2,
    this.color = AppColors.mainColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontFamily: 'Roboto',
          fontSize: size,
        ));
  }
}
