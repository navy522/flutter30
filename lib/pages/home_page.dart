import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int days = 30;
  String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Catalog App Git"),
        centerTitle: true,
      ),
      body: Center(child: Text("Welcome to $days days of Flutter by $name")),
      drawer: Drawer(
        backgroundColor: Colors.green,
      ),
    );
  }
}