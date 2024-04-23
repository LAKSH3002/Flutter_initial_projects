import 'package:flutter/material.dart';

var myAppBar =  AppBar(
        backgroundColor: Colors.red,
);

var mydrawer = Drawer(
      backgroundColor: Colors.grey,
      child: Column(children: const [
        DrawerHeader(child: Icon(Icons.favorite)),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('DashBoard'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Accounts'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('DashBoard'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('DashBoard'),
        ),
      ]),
      );