import 'package:basics_app/Responsive/constants.dart';
import 'package:flutter/material.dart';

import 'mytile.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Layoutbuild(
        mobile: mobile(),
        tablet: tablet(),
        Desktop: Desktop(),
      ),
    );
  }
}

class Layoutbuild extends StatelessWidget 
{
  final Widget mobile;
  final Widget tablet;
  final Widget Desktop;

  const Layoutbuild({
    required this.mobile,
    required this.tablet,
    required this.Desktop,
    });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth<500){
        return mobile;
      }
      else if(constraints.maxWidth <1100)
      {
        return tablet;
      }
      else{
        return Desktop;
      }
    });
  }
}

// Mobile scaffold
class mobile extends StatefulWidget {
  const mobile({super.key});

  @override
  State<mobile> createState() => _mobileState();
}

class _mobileState extends State<mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Colors.grey,
      drawer: mydrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.blue,),
                );
              }),
            ),
          ),

          Expanded(child: ListView.builder(
          itemCount: 5,
          itemBuilder:(context,index){
            return MyTile();
          } ))
        ],
      ),
    );
  }
}

class tablet extends StatefulWidget {
  const tablet({super.key});

  @override
  State<tablet> createState() => _tabletState();
}

class _tabletState extends State<tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Colors.grey,
      drawer: mydrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.blue,),
                );
              }),
            ),
          ),

          Expanded(child: ListView.builder(
          itemCount: 5,
          itemBuilder:(context,index){
            return MyTile();
          } ))
        ],
      ),
    );
  }
}

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: myAppBar,
      body: Row(
        children: [
          mydrawer,
          Expanded(
            flex: 2,
            child: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.blue,),
                );
              }),
            ),
          ),

          Expanded(
          child: ListView.builder(
          itemCount: 5,
          itemBuilder:(context,index){
            return MyTile();
          } ))
        ],
      ),),

      Expanded(
        child: Column(
        children: [
          Expanded(child: Container(color: Colors.pink,)),
        ],
      ))
        ],
      ),
    );
  }
}