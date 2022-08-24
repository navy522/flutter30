import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/login",
    routes: {
      "/home": (context) => HomePage(),
      "/login": (context) => LoginPage(),
    },
    themeMode: ThemeMode.dark,
    theme: ThemeData(primarySwatch: Colors.orange,fontFamily: GoogleFonts.gaegu().fontFamily),
    darkTheme: ThemeData(primarySwatch: Colors.red, fontFamily: GoogleFonts.fahkwang().fontFamily),
  ));
}