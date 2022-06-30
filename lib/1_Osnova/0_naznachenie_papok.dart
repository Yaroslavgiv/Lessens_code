// .dart_too билды пабспеки и джесоны
// .idea настройки от ИДЕ джетбрейнс
// build папка с изменениями которые мы делаем, все автоматически
// .gitignore файл с названиями временных файлов, которые флатер игнорит
// .metadata инфа для правельного построения приложения
// .packages список зависимостей
// analysis_options.yaml
// pubspec.lock отслеживание точных последних версий пакетов
// pubspec.yaml управление зависимостями и пакетами
// REАDME.md описание проэкта
// untitled12.iml

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Weather Forecast',
            style: TextStyle(color: Colors.black87),
          ),
        ),
      ),
    );
  }
}
