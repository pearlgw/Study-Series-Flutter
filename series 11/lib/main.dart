// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<Tab> myTab = [
    Tab(
      text: "text 1",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      text: "text 2",
      icon: Icon(Icons.settings),
    ),
    Tab(
      text: "text 3",
      icon: Icon(Icons.accessibility),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length, 
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('My Apps'),
            bottom: TabBar(
              labelColor: Colors.amber,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal
              ),
              tabs: myTab,
              indicator: BoxDecoration(
                color: const Color.fromARGB(255, 11, 80, 136),
                // borderRadius: BorderRadius.circular(10),
                border: Border(
                  bottom: BorderSide(
                    color: const Color.fromARGB(255, 170, 131, 13),
                    width: 5
                  )
                )
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Text 1"),
              ),
              Center(
                child: Text("Text 2"),
              ),
              Center(
                child: Text("Text 3"),
              ),
            ],
          ),
        )
      ),
    );
  }
}