import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ///git hub tetsing
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'kevin devani'),
    );
  }
}
