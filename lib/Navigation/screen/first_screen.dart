import 'package:untitled12/Navigation/screen/second_screen.dart';

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'Some Text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                text,
                style: const TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                _returnDataFromSecondScreen(context);
              }, 
              child: const Text(
                "Go to second screen",
                style: TextStyle(fontSize: 24),
              ),
              )
          ],),),
    );
  }
  void _returnDataFromSecondScreen(BuildContext context) async {
    Route route = MaterialPageRoute(builder: (context) => SecondScreen());
                final result = await Navigator.push(context, route);
                setState(() {
                  text = result;
                });

  }
}