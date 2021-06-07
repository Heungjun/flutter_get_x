import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/pages/normal/first.dart';

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
