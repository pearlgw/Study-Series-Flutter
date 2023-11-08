import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List <Map<String, dynamic>> MyList = [
    {
      "Name" : "Gayuh",
      "Age" : 20,
      "favColor" : ['biru', 'ungu', 'coklat','biru', 'ungu', 'coklat','biru', 'ungu', 'coklat','biru', 'ungu', 'coklat',]
    },
    {
      "Name" : "Widyanata",
      "Age" : 18,
      "favColor" : ['blue', 'purple', 'brown']
    },
    {
      "Name" : "Gita Carmeilia",
      "Age" : 25,
      "favColor" : ['silver', 'orange']
    },
    {
      "Name" : "Gita Carmeilia",
      "Age" : 25,
      "favColor" : ['silver', 'orange']
    },
    {
      "Name" : "Gita Carmeilia",
      "Age" : 25,
      "favColor" : ['silver', 'orange']
    },
    {
      "Name" : "Gita Carmeilia",
      "Age" : 25,
      "favColor" : ['silver', 'orange']
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mapping List'),
        ),
        body: ListView(
          children: MyList.map((data) {
            List myfavcolor = data['favColor'];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              color: Colors.blueGrey.withOpacity(0.1),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age: ${data['Age']}"),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfavcolor.map((color) {
                          return Container(
                            child: Text(color),
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8
                            ),
                            padding: EdgeInsets.all(10),
                          );
                        }).toList()
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        )
      ),
    );
  }
}