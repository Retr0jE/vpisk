import 'package:flutter/material.dart';
import 'package:maket1/medinow.dart';
import 'package:maket1/MindDeepRelax.dart';

import 'bible.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     //home: Bible()
      
      //home: MindDeepRelax()
      home: medinow()
    );
  }
}

