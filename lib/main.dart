import 'package:flutter/material.dart';
import 'HalamanUtama.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HalamanUtama(),
    );
  }
}
