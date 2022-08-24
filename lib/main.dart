import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
    themeMode: ThemeMode.light,
    theme: ThemeData(primarySwatch: Colors.orange),
    darkTheme: ThemeData(primarySwatch: Colors.red),
    initialRoute: "/login",
    routes: {
      "/": (context) => HomePage(),
      "/login": (context) => LoginPage(),
    },
  ));
}
