import 'package:flutter/material.dart';
import 'package:navigation_demo/screens/second_page.dart';
import '/screens/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (ctx) => FirstPage(),
        SecondPage.routeName: (ctx) => SecondPage(),
      },
      //home: FirstPage(),
      initialRoute: '/',
    );
  }
}
