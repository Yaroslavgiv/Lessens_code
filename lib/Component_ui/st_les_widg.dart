import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      color: Colors.greenAccent,
      padding: const EdgeInsets.only(top: 90),
      child: const MyStatelessWidget(
        myColor: Colors.blueAccent,
        myChild: Text(
          'Flutter hello!',
          style: TextStyle(fontSize: 22, color: Colors.black),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
        ),
      ),
    ),
  );
}

class MyStatelessWidget extends StatelessWidget {
  final Widget myChild;
  final Color myColor;
  const MyStatelessWidget(
      {Key? key, required this.myChild, required this.myColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColor,
      child: myChild,
    );
  }
}
