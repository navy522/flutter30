import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String enteredUsername = "User";
  bool changeButton = false;

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
              Text("Welcome $enteredUsername", maxLines: 1,style: TextStyle(fontSize: 28,
                  fontWeight: FontWeight.bold,color: Colors.grey[500]),),
              SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
               child: Column(
                 children: [
                   TextField(onChanged: (value) {
                     enteredUsername = value;
                     setState(() {});
                   },decoration: InputDecoration(
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

              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                 await Future.delayed(Duration(seconds: 1));
                 Navigator.pushNamed(context, "/home");
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  width: changeButton ? 70 : 100,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular( changeButton ? 5 : 50)),
                  duration: Duration(milliseconds: 1000),
                  child: changeButton ? Icon(Icons.done_outline_outlined) : Text("Login",style: TextStyle(color: Colors.black,fontSize: 20,
                  )),
                ),
              )


              /*ElevatedButton(onPressed: () {
                print("Clicked");
                Navigator.pushNamed(context, "/home");
              }, child: Text("Login",style: TextStyle(fontSize: 16,),))*/
            ],
          ),
        ),
      ),
    );
  }
}