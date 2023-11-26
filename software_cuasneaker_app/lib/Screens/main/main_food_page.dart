import 'package:flutter/material.dart';
import 'package:software_cuasneaker_app/Screens/detail/product_detail.dart';
import 'package:software_cuasneaker_app/Screens/main/food_page_body.dart';
import 'package:software_cuasneaker_app/Utils/colors.dart';
import 'package:software_cuasneaker_app/Utils/dimensions.types.dart';
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
    print("Current height is ${MediaQuery.of(context).size.height}");
    print("Current width is ${MediaQuery.of(context).size.width}");
    return Scaffold(
        body: Column(
      children: [
        // showing the header
        Container(
          child: Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            margin: EdgeInsets.only(
                top: Dimensions.height25, bottom: Dimensions.height15),
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
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.iconSize30,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //showing the body
        const Expanded(
            child: SingleChildScrollView(
          child: FoodPageBody(),
        ))
      ],
    ));
  }
}
