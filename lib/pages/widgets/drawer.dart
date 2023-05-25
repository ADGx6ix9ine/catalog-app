import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
              accountName: Text("ADG"),
              accountEmail: Text("adg8503@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/ADGprofile.jpg"),
                  ),
            )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,
              ),
              title: Text(
                "HOME",
              textScaleFactor: 1.3,
              style: TextStyle(color: Colors.white),
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "PROFILE",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text(
                "EMAIL",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
