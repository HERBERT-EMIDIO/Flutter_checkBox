import 'package:flutter/material.dart';
import 'package:usado_checkbox/entrada_checkBox.dart';



void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckBox',
      //home: HomePage(),
      home: EntradaCheckBox(),
    );
  }
}
