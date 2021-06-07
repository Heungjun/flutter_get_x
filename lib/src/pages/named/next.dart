import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('뒤로 이동')),
            SizedBox(
              height: 10,
            ),
            // Text('Get: ${Get.arguments['name']}, ${Get.arguments['age']}'),
            Text(
                'Get: ${(Get.arguments as User).name}, ${(Get.arguments as User).age}'),
          ],
        ),
      ),
    );
  }
}
