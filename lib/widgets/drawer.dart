import 'package:flutter/material.dart';

Widget drawerScreen(
  BuildContext context,
) =>
    Drawer(
      elevation: 0,
      width: 200,
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          //  DrawerHeader(),
          //   // decoration: BoxDecoration(
          //   //   image: DecorationImage(
          //   //     image: NetworkImage("https://picsum.photos/250?image=69"),
          //   //     fit: BoxFit.cover,
          //   //   ),
          //   // ),
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 74, 81, 87),
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmI389MmFguMK_PPYYmok7kiUyKTZIdZRH2A&usqp=CAU'),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text(
              "John ",
              style: TextStyle(fontSize: 18),
            ),
            accountEmail: Text("John@gmail.com"),
            currentAccountPictureSize: Size.square(60),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://picsum.photos/250?image=9"),
            ),
          ),

          SizedBox(height: 3),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.book),
          //   title: Text(' My Course '),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.workspace_premium),
            title: Text('Go Premium '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.video_label),
          //   title: Text(' Saved Videos '),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.logout),
          //   title: Text('LogOut'),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
    );
