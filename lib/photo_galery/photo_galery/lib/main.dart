import 'package:flutter/material.dart';
import 'package:photo_galery/screens/poto_gallery_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Gallery',
      theme: ThemeData.dark(),
      home: PhotoGallery(),
    );
  }
}
