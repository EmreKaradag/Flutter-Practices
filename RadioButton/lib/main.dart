import 'package:flutter/material.dart';
import 'package:radio_buton1/radio_button_kullanimi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:RadioButtonKullanimi(),
    );
  }
}