import 'package:get/get.dart';

class StaticController extends GetxController {
  static StaticController get to => Get.find();
  RxInt count = 0.obs;
  void inCrease(String id) {
    count++;
  }

  void putNumber(int value) {
    count(value);
  }
}
