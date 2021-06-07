import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
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
            ElevatedButton(
                onPressed: () {
                  Get.offAll(Home());
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(
                  //       builder: (context) => Home(),
                  //     ),
                  //     (route) => false);
                },
                child: Text('홈으로 이동')),
          ],
        ),
      ),
    );
  }
}
