import 'package:flutter/material.dart';
import 'package:software_cuasneaker_app/Screens/main/food_page_body.dart';
import 'package:software_cuasneaker_app/Utils/colors.dart';
import 'package:software_cuasneaker_app/Widgets/big_text_widget.dart';
import 'package:software_cuasneaker_app/Widgets/small_text_widget.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            margin: const EdgeInsets.only(top: 25, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigTextWidgets(
                      text: "Xin chào",
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        SmallTextWidgets(
                          text: "Lê Thanh Thái",
                        ),
                        const Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const FoodPageBody()
      ],
    ));
  }
}
