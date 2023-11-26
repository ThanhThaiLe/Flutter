import 'package:get/get.dart';

//867.4285714285714
class Dimensions {
  //config
  static double height = 867.4285714285714;
  static double width = 411.42857142857144;
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  //page
  static double pageView = screenHeight / (height / 320);
  static double pageViewContainer = screenHeight / (height / 220);
  static double pageViewTextContainer = screenHeight / (height / 120);
  //height
  static double height5 = screenHeight / (height / 5);
  static double height10 = screenHeight / (height / 10);
  static double height15 = screenHeight / (height / 15);
  static double height20 = screenHeight / (height / 20);
  static double height25 = screenHeight / (height / 25);
  static double height30 = screenHeight / (height / 30);
  static double height35 = screenHeight / (height / 35);
  static double height40 = screenHeight / (height / 40);
  static double height45 = screenHeight / (height / 45);
  //dynamic with padding and margin
  static double width5 = screenHeight / (height / 5);
  static double width10 = screenHeight / (height / 10);
  static double width15 = screenHeight / (height / 15);
  static double width20 = screenHeight / (height / 20);
  static double width30 = screenHeight / (height / 30);
  //font
  static double font15 = screenHeight / (height / 15);
  static double font20 = screenHeight / (height / 20);
  static double font26 = screenHeight / (height / 26);
  static double font30 = screenHeight / (height / 30);
  //radius
  static double radius15 = screenHeight / (height / 15);
  static double radius20 = screenHeight / (height / 20);
  static double radius30 = screenHeight / (height / 30);
  //font
  static double iconSize30 = screenHeight / (height / 30);
  static double iconSize16 = screenHeight / (height / 16);
  //list view image size
  static double listViewImageSize = screenWidth / (width / 120);
  static double listViewImageContSize = screenWidth / (width / 100);
  //product detail
  static double productDetailImageSize = screenHeight / (height / 350);
}
