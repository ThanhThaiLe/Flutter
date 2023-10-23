import 'package:flutter/material.dart';

class ResponsvieButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsvieButton({super.key, this.width, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 60,
      child: Row(
        children: [Image.asset()],
      ),
    );
  }
}
