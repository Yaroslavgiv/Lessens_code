// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const FirstHome(),
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (context) => const FirstHome());

        case '/second':
          final user = settings.arguments as User;
          return MaterialPageRoute(
              builder: (context) => SecondHome(user: user));

        default:
          return MaterialPageRoute(
            builder: (_) => Scaffold(
              body:
                  Center(child: Text("No route defined for ${settings.name}")),
            ),
          );
      }
    },
  ));
}

class FirstHome extends StatelessWidget {
  const FirstHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Home'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Second Home"),
          onPressed: () {
            User user = User(name: "Sergey", age: 34);
            Navigator.pushNamed(context, '/second', arguments: user);
          },
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  final User user;
  // ignore: use_key_in_widget_constructors
  const SecondHome({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${this.user.name} - ${this.user.age}"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Go Back"),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});
}
