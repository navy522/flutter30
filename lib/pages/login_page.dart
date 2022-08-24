import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login.png", fit: BoxFit.cover,),
              SizedBox(height: 20,),
              Text("Welcome", style: TextStyle(fontSize: 28,
                  fontWeight: FontWeight.bold,),),
              SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
               child: Column(
                 children: [
                   TextField(decoration: InputDecoration(
                       hintText: "Username",
                       labelText: "Enter Username"
                   ),),
                   SizedBox(height: 10,),
                   TextFormField(obscureText: true,
                       decoration: InputDecoration(
                       hintText: "Password",
                       labelText: "Enter Password",)),
                 ],
               ),
             ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                print("Clicked");
                Navigator.pushReplacementNamed(context, "/home");
              }, child: Text("Login",style: TextStyle(fontSize: 16,),))
            ],
          ),
        ),
      ),
    );
  }
}