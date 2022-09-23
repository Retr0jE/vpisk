import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Maket1 extends StatefulWidget {
  const Maket1({Key? key}) : super(key: key);

  @override
  State<Maket1> createState() => _Maket1State();
}

class _Maket1State extends State<Maket1> { @override
  Widget build(BuildContext context) {
         return Scaffold(
          backgroundColor: Color.fromRGBO(3, 158, 162, 1),
        
             body: Stack( 
              
             // alignment: Alignment.center,
              
              children: [
             Container(
              
              width: 370,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 250, left: 20),
              decoration: BoxDecoration(
              
              // border: Border.all(color: Colors.black, width: 3),
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
              margin: EdgeInsets.only(top: 310, left: 20),
              decoration: BoxDecoration(
              
               //border: Border.all(color: Colors.black, width: 3),
               borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(200, 205, 253, 255)
               
              ),
              child: Text('Continue with Email or Phone', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              
              ),
              ),
              Container(
              width: 400,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 360, left: 6),
              
              child: Text('Continue with Google', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
              
              ),
              ),
              Container(
              width: 400,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 110, left: 8),
              
              child: Text('Cum With Us!', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
              
              ),
              ),


               Container(
              width: 300,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 80, left: 60),
              
              child: Text('semenow', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
              
              ),
              ),
              
                 Container(
                
                 alignment: Alignment.bottomCenter,
                 margin: EdgeInsets.only(top: 400),
                  width: 500,
                  height: 300,
                  child: Image.asset('images/yoga.jpg', fit: BoxFit.fill,),
                
                 ),
              ],
             ),
         );
  }
}