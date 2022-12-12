import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Screen extends StatelessWidget{
const Screen({super.key, required this.texet});

final String texet;

@override
Widget build(BuildContext context){
 final arguments = (ModalRoute.of(context)?.settings.arguments ) as List<Object>;
return Scaffold(
appBar: AppBar(),
body: Text(arguments[0].toString()),
);
}
}