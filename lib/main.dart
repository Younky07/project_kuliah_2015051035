import 'package:project_kuliah/pages/login.dart';
import 'package:project_kuliah/pages/utama.dart';
import 'package:project_kuliah/pages/transfer.dart';
import 'package:project_kuliah/pages/grid.dart';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
  ];

  @override
  Widget build(BuildContext contect) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: 'Midle'),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      debugShowCheckedModeBanner: false,
      title: 'Welcome Home',
      theme: ThemeData.light(),
      home: login(),
    );
  }
}
