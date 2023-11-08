import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.amber];
  List<Widget> listKu = List.generate(100, (index) => Text("${index+1}", style: TextStyle(fontSize: 20+double.parse(index.toString()))));
  List<Widget> myList = [
    Container(
      height: 200,
      width: 200,
      color: Colors.red,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.green,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.blue,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.amber,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('belajar'),
        ),
        body: ListView(
          children: listKu,
          // separatorBuilder: (context, index) {
          //     return Divider(
          //       color: Colors.black,
          //     );
          // },
          // itemCount: myColor.length,
          // itemBuilder: (context, index){
          //   return Text("Halo");
          // },
        ),
      ),
    );
  }
}