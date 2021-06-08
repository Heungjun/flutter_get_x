import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/home.dart';
import 'package:get_x/src/pages/binding/binding_page.dart';
import 'package:get_x/src/pages/binding/binding_pages.dart';
import 'package:get_x/src/pages/named/first.dart';
import 'package:get_x/src/pages/named/next.dart';
import 'package:get_x/src/pages/named/second.dart';
import 'package:get_x/src/pages/named/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      // home: Home(), // no used routes
      initialRoute: '/',
      // routes => getX Transition 과 충돌
      // routes: {
      //   '/': (context) => Home(),
      //   '/first': (context) => FirstNamedPage(),
      //   '/second': (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(name: '/', page: () => Home(), transition: Transition.zoom),
        GetPage(name: '/first', page: () => FirstNamedPage()),
        GetPage(name: '/second', page: () => SecondNamedPage()),
        GetPage(
          name: '/next',
          page: () => NextPage(),
          transition: Transition.topLevel,
        ),
        GetPage(
          name: '/user/:uid',
          page: () => UserPage(),
          transition: Transition.size,
        ),
        GetPage(
          name: '/binding',
          page: () => BindingPage(),
          transition: Transition.cupertino,
          binding: BindingPages(),
        ),
      ],
    );
  }
}
