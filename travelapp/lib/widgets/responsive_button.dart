import 'package:flutter/material.dart';
import 'package:travelapp/misc/colors.dart';

class ResponsvieButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsvieButton({super.key, this.width, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
          )
        ],
      ),
    );
  }
}
