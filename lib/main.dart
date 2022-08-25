import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/login",
    routes: {
      "/home": (context) => HomePage(),
      "/login": (context) => LoginPage(),
    },
    themeMode: ThemeMode.light,
    theme: ThemeData(primarySwatch: Colors.orange,textTheme: GoogleFonts.recursiveTextTheme()),
    darkTheme: ThemeData(primarySwatch: Colors.red, fontFamily: GoogleFonts.akayaKanadaka().fontFamily),
  ));
}