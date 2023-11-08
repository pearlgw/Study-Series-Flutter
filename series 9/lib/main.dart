import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Formate Date'),
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()),
            style: TextStyle(
              fontSize: 20
            ),
          ),
        ),
      ),
    );
  }
}