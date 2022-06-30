import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bilding ListView'),
          centerTitle: true,
        ),
        body: const BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  const BodyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

// Statick ListView

// Widget _myListView() {
//   return ListView(
//     children: const <Widget>[
//       ListTile(
//         title: Text('Sun'),
//         subtitle: Text('Todey Clear'),
//         leading: Icon(Icons.wb_sunny),
//         trailing: Icon(Icons.keyboard_arrow_right),
//       ),
//       ListTile(
//         title: Text('Cloudy'),
//         subtitle: Text('Todey Cloudy'),
//         leading: Icon(Icons.wb_cloudy),
//         trailing: Icon(Icons.keyboard_arrow_right),
//       ),
//       ListTile(
//         title: Text('Snow'),
//         subtitle: Text('Todey Snow'),
//         leading: Icon(Icons.ac_unit),
//         trailing: Icon(Icons.keyboard_arrow_right),
//       ),
//     ],
//   );
// }

// dinamic ListView

Widget _myListView() {
  final List<ListItem> items = List<ListItem>.generate(
      10000,
      (i) => i % 6 == 0
          ? HeadingItem('Heading $i')
          : MessageItem('Sender $i', 'Message body $i'));

  return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        if (item is MessageItem) {
          return ListTile(
            title: Text(item.heading, style: Theme.of(context).textTheme.headline5,),
          );
        }
      });
}
