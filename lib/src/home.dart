import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/pages/dependencys/dependencys_manage_page.dart';
import 'package:get_x/src/pages/normal/first.dart';
import 'package:get_x/src/pages/reactive_state_manage/reactive_state_manage_page.dart';
import 'package:get_x/src/pages/simple_state_manage/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirstPage(),
                  ));
                },
                child: Text('일반적인 라우트')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.to(FirstPage());
                },
                child: Text('GetX 를 이용한 방법')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/first'),
                child: Text('기존 Named 라우트')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () => Get.toNamed('/first'),
                child: Text('GetX Named 라우트')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  // Get.toNamed('/next', arguments: {'name': 'YHJ', 'age': '30'});
                  Get.toNamed('/next', arguments: User('YHJ', 30));
                },
                child: Text('Argument 전달')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/user/09753?name=YHJ&age=30');
                },
                child: Text('동적 url')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.to(SimpleStateManagePage());
                },
                child: Text('단순상태관리')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.to(ReactiveStateManagePage());
                },
                child: Text('반응형상태관리')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.to(DependencyManagePage());
                },
                child: Text('의존성 관리')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/binding');
                },
                child: Text('바인딩')),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User(this.name, this.age);
}
