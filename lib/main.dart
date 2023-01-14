import 'package:flutter/material.dart';
import 'package:sesame_project2/Secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Secondpage(),
    );
  }
}


