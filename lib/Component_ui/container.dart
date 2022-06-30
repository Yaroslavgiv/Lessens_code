import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
          centerTitle: true,
        ),
        body: Row(
          children: <Widget>[
            const Expanded(
              flex: 3,
              child: Image(
                  image: NetworkImage(
                      'https://www.anypics.ru/large/201210/24049.jpg'),
                  fit: BoxFit.cover),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Colors.red,
                child: const Text('1'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Colors.green,
                child: const Text('2'),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Colors.blue,
                child: const Text('3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
