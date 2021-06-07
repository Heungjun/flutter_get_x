import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/controller/count_controller_with_get_x.dart';
import 'package:get_x/src/controller/count_controller_with_provider.dart';
import 'package:get_x/src/pages/simple_state_manage/with_get_x.dart';
import 'package:get_x/src/pages/simple_state_manage/with_provider.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX());
    return Scaffold(
      appBar: AppBar(
        title: Text('단순상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetX()),
            Expanded(
                child: ChangeNotifierProvider<CountControllerWithProvider>(
                    create: (context) => CountControllerWithProvider(),
                    child: WithProvider())),
            // Text('+', style: TextStyle(fontSize: 30)),
            // ElevatedButton(onPressed: () {}, child: Text('다음페이지 이동')),
          ],
        ),
      ),
    );
  }
}
