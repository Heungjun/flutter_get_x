import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/controller/static_controller.dart';

class BindingPage extends GetView<StaticController> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  '${controller.count}',
                  style: TextStyle(fontSize: 40),
                )),
            ElevatedButton(
                onPressed: () {
                  // StaticController.to.inCrease('first');
                  controller.inCrease('first');
                },
                child: Text(''))
          ],
        ),
      ),
    );
  }
}
