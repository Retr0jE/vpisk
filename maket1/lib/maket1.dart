import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Maket extends StatefulWidget {
  const Maket({Key? key}) : super(key: key);

  @override
  State<Maket> createState() => _MaketState();
}

class _MaketState extends State<Maket> { @override
  Widget build(BuildContext context) {
         return Scaffold(
        
             body: Stack( 
              
              alignment: Alignment.center,
              
              children: [
             Container(
              width: 370,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 200, left: 6),
              decoration: BoxDecoration(
              
               border: Border.all(color: Colors.black, width: 3),
               borderRadius: BorderRadius.circular(50),
              color: Colors.white 
               
              ),
              child: Text('Sign in with Apple', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              
              ),
              
             
             ),
              Container(
              width: 370,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 320, left: 6),
              decoration: BoxDecoration(
              
               border: Border.all(color: Colors.black, width: 3),
               borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(204, 0, 225, 255)
               
              ),
              child: Text('Continue with Email or Phone', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              
              ),
              ),
              Container(
              width: 400,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 420, left: 6),
              
              child: Text('Continue with Google', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              
              ),
              ),
              Container(
              width: 400,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 1, left: 6),
              
              child: Text('Cum With Us!', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              
              ),
              ),


               Container(
              width: 300,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 80, left: 6),
              
              child: Text('semenow', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              
              ),
              ),
              
              //   Container(
              //   decoration: BoxDecoration(
              //  image: DecorationImage(
              //    image: AssetImage("images/yoga.jpg"),
              //     fit: BoxFit.cover,
              //  ),
              //   ),
              //   ),
              ],
             ),
         );
  }
}