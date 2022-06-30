import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'IndieFlower',
        primaryColor: Colors.orangeAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Adding Assets'),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              const Image(image: AssetImage('assets/images/bg.jpg')),
              Image.asset('assets/icons/icon.png'),
              const Positioned(
                top: 18.0,
                left: 110,
                child: Text(
                  "My custom font",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
