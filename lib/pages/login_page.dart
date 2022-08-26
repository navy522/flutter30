import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String enteredUsername = "User";
  bool changeButton = false;

  final  _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {

    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, "/home");
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/hello.png", fit: BoxFit.cover,),
              SizedBox(height: 20,),
              Text("Welcome $enteredUsername",
                maxLines: 1,
                style: TextStyle(fontSize: 28,
                  fontWeight: FontWeight.bold,
                    color: Colors.grey[500]),),

              SizedBox(height: 20,),

             Padding(
               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
               child: Form(
                 key: _formKey,
                 child: Column(
                   children: [
                     TextFormField(onChanged: (value) {
                       enteredUsername = value;
                       setState(() {});
                     },decoration: InputDecoration(
                         hintText: "Username",
                         labelText: "Enter Username"
                     ),
                     validator: (value) {
                       if(value!.isEmpty) {
                         return "Username cannot be empty";
                       }
                           return null;
                     },),
                     SizedBox(height: 10,),
                     TextFormField(obscureText: true,
                         decoration: InputDecoration(
                         hintText: "Password",
                         labelText: "Enter Password",),
                     validator: (value) {
                       if(value!.isEmpty){
                         return "Password cannot be empty";
                       }
                       else if(value.length < 8 ){
                         return "Password Length should be 8 or more";
                       }
                       return null;
                     },),
                   ],
                 ),
               ),
             ),

              SizedBox(height: 20,),

              Material(
                  borderRadius: BorderRadius.circular( changeButton ? 5 : 15),
                color: Colors.orange,
                child: InkWell(
                   splashColor: Colors.deepOrange,
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    width: changeButton ? 70 : 100,
                    height: 40,
                    duration: Duration(seconds: 1),
                    child: changeButton ? Icon(Icons.done_outline_outlined) : Text("Login",style: TextStyle(color: Colors.black,fontSize: 20,
                    )),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}