import 'package:get/get.dart';
import 'package:get_x/src/controller/static_controller.dart';

class BindingPages implements Bindings {
  @override
  void dependencies() {
    Get.put(StaticController());
  }
}
