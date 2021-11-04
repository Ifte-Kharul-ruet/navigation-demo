import 'package:flutter/material.dart';
import 'package:navigation_demo/screens/second_page.dart';
//import 'package:navigation_demo/screens/second_page.dart';

class FirstPage extends StatelessWidget {
  final List<String> names = [
    'M',
    'R',
    'Raja',
    'Wazed',
    'Dim',
    'Faisal',
    'Kamal'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          children: [
            for (var i in names) Text(i),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, SecondPage.routeName,
                    arguments: names);
              },
              child: Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
