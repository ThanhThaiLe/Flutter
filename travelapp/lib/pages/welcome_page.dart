import 'package:flutter/material.dart';
import 'package:travelapp/widgets/responsive_button.dart';

import '../misc/colors.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-four.jpg",
    "welcome-five.jpg",
    "welcome-six.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/" + images[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Mountain",
                          size: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: 250,
                            child: AppText(
                              text:
                                  "Mountain hikes give you an incredible sense of freedom along with endurance tests",
                              color: AppColors.textColor2,
                              size: 14,
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                        ResponsvieButton(
                          width: 120,
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
