import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inputs1/dropdown.dart';
import 'package:inputs1/globalkey_kullanimi.dart';
import 'package:inputs1/globalkey_kullanimi.dart';
import 'package:inputs1/other_inputs.dart';
import 'package:inputs1/text_field_islemleri.dart';
import 'package:inputs1/textformfield_kullanimi.dart';

void main(List<String> args) {
  runApp(myApp());
}


class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: TextFieldIslemleri(title: "textfields")
    );
  }
}