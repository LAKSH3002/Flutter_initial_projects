import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const My_responsive_app());
}

class My_responsive_app extends StatelessWidget {
  const My_responsive_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: responsiveapp(),
    );
  }
}

class responsiveapp extends StatefulWidget {
  const responsiveapp({super.key});

  @override
  State<responsiveapp> createState() => _responsiveappState();
}

class _responsiveappState extends State<responsiveapp> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive App'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Container(
            height: screenheight*0.10,
            width: screenwidth*0.25,
            color: Colors.red,
          ),
          Container(
            height: screenheight*0.10,
            width: screenwidth*0.25,
            color: Colors.blue,
          ),
          Container(
            height: screenheight*0.10,
            width: screenwidth*0.25,
            color: Colors.green,
          ),
          Container(
            height: screenheight*0.10,
            width: screenwidth*0.25,
            color: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}