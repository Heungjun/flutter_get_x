import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class User {
  String name;
  int? age;
  User({this.name = 'YHJ', this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: 'HJ, Y', age: 30).obs;
  RxList<String> list = [''].obs;

  void inCrease() {
    count++;

    // nums(NUM.SECOND);
    // user(User());
    user.update((val) {
      val?.name = '무명';
      val?.age = 1;
    });

    // list.addAll(item);
    // list.add(item);
    // list.addIf(condition, item);
  }

  void putNumber(int value) => count(value);

  @override
  void onInit() {
    ever(count, (_) => print('매번 호출'));
    once(count, (_) => print('한번만 호출'));
    debounce(count, (_) => print('마지막 변경에 한번만 호출'), time: Duration(seconds: 1));
    interval(count, (_) => print('변경되고 있는 동안 주기적으로 호출'),
        time: Duration(seconds: 1));
    super.onInit();
  }
}
