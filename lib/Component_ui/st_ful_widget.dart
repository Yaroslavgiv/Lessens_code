import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  _MyFirstAppState createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  late bool _loading; // переменная процесса загрузки
  late double _progressValue; // переменная отобрображения процентов

  // задаем первоначальное значение
  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            padding: const EdgeInsets.all(16.0),
            child: _loading
                ? Column(
                    // если загрузка пошла
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LinearProgressIndicator(value: _progressValue),
                      Text(
                        '${(_progressValue * 100).round()}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                // если загрузка закончена будем выводить
                : const Text(
                    'Press button to download',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _loading = !_loading;
            _updateProgress();
          },
          child: const Icon(Icons.publish_rounded),
        ),
      ),
    );
  }

  void _updateProgress() {
    // реализовываем объект состояния
    const oneSec = Duration(seconds: 2);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1; // _progressValue =_progressValue + 0.2

        if (_progressValue.toStringAsFixed(1) == '1.0') {
          // то есть 100%
          _loading = false;
          t.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}
