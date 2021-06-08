import 'package:flutter/material.dart';
import 'package:get_x/src/controller/dependency_controller.dart';
import 'package:get/get.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text(''),
          onPressed: () {
            Get.find<DependencyController>().inCrease();
          },
        ),
      ),
    );
  }
}
