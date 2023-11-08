import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Image'),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            // child: Image.asset('images/image.jpg', fit: BoxFit.cover,),
            child: Image.network('https://picsum.photos/500/500', fit: BoxFit.fill,),
            // child: const Image(
            //   fit: BoxFit.cover,
            //   image: AssetImage('images/image.jpg'),
            //   // image: NetworkImage('https://picsum.photos/350/500',),
            // ),
          ),
        ),
      ),
    );
  }
}