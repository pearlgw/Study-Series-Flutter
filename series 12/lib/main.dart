import 'package:flutter/foundation.dart';
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
          title: Text("My App"),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  autocorrect: false,
                  autofocus: false,
                  // enableSuggestions: true,
                  // enableInteractiveSelection: true,
                  // keyboardType: TextInputType.phone,
                  // readOnly: true,
                  // obscureText: true,
                  // obscuringCharacter: '-',
                ),
                TextField(
                  autocorrect: false,
                  autofocus: true,
                  // enableSuggestions: true,
                  // enableInteractiveSelection: true,
                  // keyboardType: TextInputType.phone,
                  // readOnly: true,
                  // obscureText: true,
                  // obscuringCharacter: '-',
                  // textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    hintText: "Tolong di isi yaa"
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}