import 'package:flutter/material.dart';

void main(){
  runApp(Aplikasiku());
}

class Aplikasiku extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ini Aplikasiku'),
        ),
        body: const Center(
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            // maxLines: 4,
            // overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            style: TextStyle(
              backgroundColor: Colors.amber,
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'font1',
              // letterSpacing: 10,
              // decoration: TextDecoration.lineThrough,
              // decorationStyle: TextDecorationStyle.wavy,
              // decorationColor: Colors.black,
              // decorationThickness: 2
            ),
          ),
        ),
      ),
    );
  }
}