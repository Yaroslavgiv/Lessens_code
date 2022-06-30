import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const FirstHome(),
    routes: {
      '/first': (context) => const FirstHome(),
      '/second': (context) => SecondHome(),
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
  late final User user;

  @override
  Widget build(BuildContext context) {
    RouteSettings? settings = ModalRoute.of(context)?.settings;
    user = settings?.arguments as User;
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
