import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:basics_app/new.dart';
import 'package:basics_app/screens/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    
    SystemChrome.setSystemUIOverlayStyle(
     const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: Home(),
    );
  }
}