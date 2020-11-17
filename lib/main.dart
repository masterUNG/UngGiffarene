import 'package:flutter/material.dart';
import 'package:unggiffarine/state/authen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authen(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}
