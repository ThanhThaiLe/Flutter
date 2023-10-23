import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.item});
  var item;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff4b4b4b),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const Icon(
              Icons.delete_outline,
              color: Colors.white,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
