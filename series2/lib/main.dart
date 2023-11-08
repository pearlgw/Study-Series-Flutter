import 'package:flutter/material.dart';

main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('column'),
        ),
        body: Stack(
          children: [
            Container(
              width: 400,
              height: 400,
              color: Colors.amber,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.black,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}