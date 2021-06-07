import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  int count = 0;
  void inCrease(String id) {
    count++;
    update([id]);
  }
}
