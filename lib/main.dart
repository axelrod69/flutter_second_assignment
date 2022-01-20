// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: MainScreen(),
    );
  }
}