import 'package:flutter/material.dart';
import 'package:software_cuasneaker_app/Widgets/small_text_widget.dart';

class IconAndTextWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Color iconColor;
  const IconAndTextWidget(
      {required this.color,
      required this.text,
      required this.iconColor,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const SizedBox(
          width: 5,
        ),
        SmallTextWidgets(
          text: text,
          color: color,
        )
      ],
    );
  }
}
