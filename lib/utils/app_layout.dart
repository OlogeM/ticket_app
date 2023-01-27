import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Applayout {
  static getsize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getscreenheight() {
    return Get.height;
  }

  static getscreenwidth() {
    return Get.width;
  }

  static getheight(double pixels) {
    double x = getscreenheight() / pixels;
    return getscreenheight() / x;
  }

  static getwidth(double pixels) {
    double x = getscreenwidth() / pixels;
    return getscreenwidth() / x;
  }
}
