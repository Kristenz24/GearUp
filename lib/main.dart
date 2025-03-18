import 'package:flutter/material.dart';
import 'homepage.dart'; // Import the homepage.dart file

void main() {
  runApp(GearUpApp());
}

class GearUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}


