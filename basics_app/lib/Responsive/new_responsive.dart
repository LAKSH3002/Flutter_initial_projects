import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const responsive());
}

class responsive extends StatelessWidget {
  const responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    // final screenwidth = MediaQuery.of(context).size.width;
    // final screenheight = MediaQuery.of(context).size.height;

    return const Scaffold(
      body: responsiveLayout(
      mobileBody: mobileBody(), 
      desktopBody: desktopBody()),
    );
  }
}

class responsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const responsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody
    });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
    builder: (context,constraints){
      if(constraints.maxWidth<600)
      {
        return mobileBody;
      }
      else{
        return desktopBody;
      }
    });
  }
}

class mobileBody extends StatelessWidget {
  const mobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('M O B I L E'),
        centerTitle: true,
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                height: 250,
                color: Colors.deepPurple,
              ),
            ),
          ),

          Expanded(child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepPurple,
                height: 120,
              ),
            );
          }),)
        ],
      ),
    );
  }
}

class desktopBody extends StatelessWidget {
  const desktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('D E S K T O P'),
        centerTitle: true,
      ),
      body: Row(
        children: [

          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      height: 250,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                
                Expanded(child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple,
                      height: 120,
                    ),
                  );
                }),)
              ],
            ),
          ),

          Container(
            width: 200,
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}