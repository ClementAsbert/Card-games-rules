import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[850],
        accentColor: Colors.orangeAccent[400],
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
