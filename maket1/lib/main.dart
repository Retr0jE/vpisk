import 'package:flutter/material.dart';
import 'package:maket1/maket1.dart';
import 'package:maket1/maket2.dart';

import 'maket3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     //home: Maket()
      
      //home: MaketTwo()
      home: MaketThree()
    );
  }
}

