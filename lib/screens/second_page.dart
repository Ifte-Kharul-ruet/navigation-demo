import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const routeName = '/second';
  // const SecondPage({Key? key, required this.n}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var j in args)
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 15.0),
                height: 50.0,
                color: Colors.amber,
                width: 100.0,
                child: Center(child: Text(j)),
              )
          ],
        ),
      ),
    );
  }
}
