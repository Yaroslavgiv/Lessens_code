import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());
//? main функция для запуска приложения которое находиться в функции runApp с параметром MyApp

//? StatelessWidget виджет который содержит виджеты, которые не изменяються
//? extends это наследование

class MyApp extends StatelessWidget {
  //? @override скрипт для переопределения класса
  @override
  //? build отдельный экран с возможностью передачи в него информации через BuildContext
  Widget build(BuildContext context) {
    return MaterialApp(
      //? Основа для приложения
      home: Scaffold(
          //? Виджет с параметрами экрана по умолчанию
          appBar: AppBar(
            //? Верхняя бровка экрана
            title: const Text(
              "Weather",
              style: TextStyle(color: Colors.black87),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            iconTheme: const IconThemeData(color: Colors.black54),
            systemOverlayStyle: SystemUiOverlayStyle.light,
            actions: const <Widget>[
              IconButton(onPressed: null, icon: Icon(Icons.settings)),
            ],
          ),
          body: _buildBody()),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                const Divider(),
                _temperature(),
                const Divider(),
                _temperatureForecast(),
                const Divider(),
                _footerRatings()
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return const Image(
    image: NetworkImage(
        'https://look.com.ua/pic/201209/1920x1080/look.com.ua-19091.jpg'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    children: const <Widget>[
      Text(
        'Tuesday - Feb 21',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(
        thickness: 2.0,
        color: Colors.blue,
      ),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque odio ligula, sagittis ut mi vel, tincidunt porttitor urna. Proin eu pretium diam. Curabitur gravida diam volutpat, fermentum nunc nec, accumsan odio.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Icon(Icons.wb_sunny, color: Colors.yellow),
        ],
      ),
      const SizedBox(width: 25.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            '-15° Clear',
            style: TextStyle(color: Colors.deepPurple),
          ),
          Row(
            children: const <Widget>[
              Text(
                'Sankt-Petersburg',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text(
          '${index + 1}°C',
          style: const TextStyle(fontSize: 15.0),
        ),
        avatar: Icon(
          Icons.wb_cloudy,
          color: Colors.blue.shade400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
          side: const BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade200,
      );
    }),
  );
}

Row _footerRatings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      const Icon(Icons.star, size: 15.0, color: Colors.black),
      const Icon(Icons.star, size: 15.0, color: Colors.black),
    ],
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      const Text(
        'Info with gissmetio.org',
        style: TextStyle(fontSize: 15.0),
      ),
      stars,
    ],
  );
}
