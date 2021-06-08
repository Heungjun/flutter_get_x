import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/controller/count_controller_with_reactive.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('GetX', style: TextStyle(fontSize: 50)),
            Obx(() => Text(
                '${Get.find<CountControllerWithReactive>().count.value}',
                style: TextStyle(fontSize: 50))),
            // OR
            // GetX(
            //   builder: (controller) => Text(
            //     '${Get.find<CountControllerWithReactive>().count.value}',
            //     style: TextStyle(fontSize: 50),
            //   ),
            // ),
            ElevatedButton(
                onPressed: () =>
                    Get.find<CountControllerWithReactive>().inCrease(),
                child: Text('+', style: TextStyle(fontSize: 50))),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () =>
                    Get.find<CountControllerWithReactive>().putNumber(5),
                child: Text('5로 변경', style: TextStyle(fontSize: 50))),
          ],
        ),
      ),
    );
  }
}
