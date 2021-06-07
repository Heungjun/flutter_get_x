import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
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
            Text('Get: ${Get.parameters['uid']}'),
            Text('Get: ${Get.parameters['name']}님 안녕하세요'),
            Text('Get: ${Get.parameters['age']}'),
          ],
        ),
      ),
    );
  }
}
