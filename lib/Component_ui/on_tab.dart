import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: const Counter(),
    appBar: AppBar(
      title: const Text("Hello Flutter!"),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
  )));
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _value = 0;

  _increaseValue() {
    setState(() => _value++);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _increaseValue,
      child: Container(
        color: Colors.lightBlueAccent,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Text(
          "Value: $_value",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
