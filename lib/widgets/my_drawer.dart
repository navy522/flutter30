import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

 final String imageUrl  = "https://www.ixpap.com/images/2021/01/naruto-wallpaper-ixpap.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green,
      child: DrawerHeader(
       padding: EdgeInsets.zero,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              accountName: Text("Navneet Singh"),
              accountEmail: Text("navneetsingh813@gmail.com"),
            ),
            ListTile(leading: Icon(Icons.home_filled,color: Colors.white,),title: Text("Home",textScaleFactor: 1.1),textColor: Colors.white,),
            ListTile(leading: Icon(Icons.person,color: Colors.white,),title: Text("Profile",textScaleFactor: 1.1),textColor: Colors.white,),
            ListTile(leading: Icon(Icons.email_outlined,color: Colors.white,),title: Text("Email Me",textScaleFactor: 1.1),textColor: Colors.white,)
          ],
        ),
      ),
    );
  }
}
