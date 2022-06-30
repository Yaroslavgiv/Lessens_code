import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Import_consol/pages/register_from_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registor from Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const RegisterFromPage(),
    );
  }
}
