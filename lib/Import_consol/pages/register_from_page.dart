import 'package:flutter/material.dart';

class RegisterFromPage extends StatefulWidget {
  const RegisterFromPage({Key? key}) : super(key: key);

  @override
  _RegisterFromPageState createState() => _RegisterFromPageState();
}

class _RegisterFromPageState extends State<RegisterFromPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Registr form'),
        centerTitle: true,
      ),
      body: Form(
        // на подобие контейнера, но для полей ввода
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // ignore: prefer_const_constructors
            TextField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // декорация поля ввода
                labelText: 'Full name *', // текст внутри поля неактивного
                hintText:
                    'What do people call you?', // текст внутри поля активного
                prefixIcon:
                    const Icon(Icons.person), // иконка слево от поля ввода
                suffixIcon: const Icon(
                  // иконка справо от поля ввода
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                // OutlineInputBorder - рамка поля ввода (enabledBorder)несфокусированного
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0)),
                // OutlineInputBorder - рамка поля ввода (focusedBorder) сфокусированного
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0)),
              ),
            ),
            const SizedBox(height: 10), // отступы между полями
            TextFormField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Phone Number *',
                hintText: 'Wear can we reach you?',
                helperText: 'Phon format: +X(XXX)XXX-XXXX',
                prefixIcon: const Icon(Icons.phone),
                suffixIcon: const Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0)),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0)),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enater a email address', // текст помошник внизу поля
                icon: const Icon(Icons.email), // разница в визуализации
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Live Story',
                hintText: 'Tell us about your self',
                helperText: 'Keep it short, this is just a demo',
                border: const OutlineInputBorder(),
              ),
              maxLines: 2, // Колличество строк в поле
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password *',
                hintText: 'Enter the password',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {},
                ),
                icon: const Icon(Icons.security),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Confirm Password *',
                hintText: 'Confirm the password',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {},
                ),
                icon: const Icon(Icons.border_color),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              child: Text('Отправить'),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: Colors.brown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
