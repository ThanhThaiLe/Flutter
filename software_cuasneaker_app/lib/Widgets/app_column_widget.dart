import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:software_cuasneaker_app/Utils/colors.dart';
import 'package:software_cuasneaker_app/Utils/dimensions.types.dart';
import 'package:software_cuasneaker_app/Widgets/big_text_widget.dart';
import 'package:software_cuasneaker_app/Widgets/icon_and_text_widget.dart';
import 'package:software_cuasneaker_app/Widgets/small_text_widget.dart';

class AppColumnWidget extends StatelessWidget {
  final String name;
  final String start;
  final String comment;
  const AppColumnWidget(
      {super.key,
      required this.name,
      required this.start,
      required this.comment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigTextWidgets(
          text: name,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return const Icon(Icons.star,
                    color: AppColors.mainColor, size: 15);
              }),
            ),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallTextWidgets(text: start),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallTextWidgets(text: comment),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallTextWidgets(text: "Comment"),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              color: AppColors.mainColor,
              iconColor: AppColors.mainColor,
            ),
            SizedBox(
              width: 5,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              color: AppColors.mainColor,
              iconColor: AppColors.mainColor,
            ),
            SizedBox(
              width: 5,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32min",
              color: AppColors.mainColor,
              iconColor: AppColors.mainColor,
            ),
          ],
        )
      ],
    );
  }
}
