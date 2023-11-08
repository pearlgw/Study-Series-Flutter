// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            width: 50,
            color: Colors.amber,
            child: Icon(
              Icons.list
            )
          ),
          title: Container(
            child: Center(
              child: Text("Gayuh Widyanata"),
            ),
          ),
          actions: [
            Container(
              width: 50,
              color: Colors.black,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(
              child: Center(
                child: Text(
                  "Haiii, I Love Flutter",
                  style: TextStyle(
                    color: Colors.amber
                  ),
                  ),
              ),
              height: 200,
              color: const Color.fromARGB(255, 8, 74, 128),
            ),
          ),
          flexibleSpace: Container(
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}