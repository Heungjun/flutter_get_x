import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/controller/count_controller_with_get_x.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  Widget _button(String id) {
    return ElevatedButton(
        onPressed: () => Get.find<CountControllerWithGetX>().inCrease(id),
        child: Text('+', style: TextStyle(fontSize: 50)));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('GetX', style: TextStyle(fontSize: 50)),
          GetBuilder<CountControllerWithGetX>(
              id: 'first',
              builder: (controller) =>
                  Text('${controller.count}', style: TextStyle(fontSize: 50))),
          GetBuilder<CountControllerWithGetX>(
              id: 'second',
              builder: (controller) =>
                  Text('${controller.count}', style: TextStyle(fontSize: 50))),
          _button('first'),
          _button('second'),
          ElevatedButton(
              onPressed: () => Get.find<CountControllerWithGetX>().putNumber(5),
              child: Text('5로 변경', style: TextStyle(fontSize: 50))),
        ],
      ),
    );
  }
}
