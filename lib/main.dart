import 'package:project_kuliah/pages/login.dart';
import 'package:project_kuliah/pages/transfer.dart';
import 'package:project_kuliah/pages/utama.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox("mybox");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final List<Widget> _pages = <Widget>[
    login(),
    Utama(),
    Transfer(),
  ];

  @override
  Widget build(BuildContext contect) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DROP',
      theme: ThemeData.light(),
      home: login(),
    );
  }
}
