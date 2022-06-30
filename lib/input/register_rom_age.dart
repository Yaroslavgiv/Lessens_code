import 'package:flutter/material.dart';

class RegisterFromPage extends StatefulWidget {
  const RegisterFromPage({Key? key}) : super(key: key);

  @override
  State<RegisterFromPage> createState() => _RegisterFromPageState();
}

class _RegisterFromPageState extends State<RegisterFromPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registor'),
        centerTitle: true,
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Ful Name *'),
            ), //? одиночный, наиболее используемый
            const SizedBox(height: 10),
            TextFormField(
              //? оборачивает TextField и дополняет функционалом c проверкой на волидность
              decoration: InputDecoration(labelText: 'Phone Number *'),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email Address'),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: 'Life Story'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password *'),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: 'Confirm password *'),
            ),
          ],
        ),
      ),
    );
  }
}
