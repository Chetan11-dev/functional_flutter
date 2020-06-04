import 'package:flutter/material.dart';
import 'package:functional_flutter/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dev Delight'),
        ),
        body: Home(),
      ),
    );
  }
}
