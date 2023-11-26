import 'package:flutter/widgets.dart';
import 'package:software_cuasneaker_app/Utils/dimensions.types.dart';

class AppIconWidget extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  const AppIconWidget({
    super.key,
    required this.icon,
    this.backgroundColor = const Color(0XFFfcf4e4),
    this.iconColor = const Color(0xFF756d54),
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30 / 2),
        color: const Color(0XFFfcf4e4),
      ),
      child: Icon(
        icon,
        color: const Color(0xFF756d54),
        size: Dimensions.iconSize16,
      ),
    );
  }
}
