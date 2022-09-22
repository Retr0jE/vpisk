import 'package:flutter/material.dart';


class MaketThree extends StatefulWidget {
  const MaketThree({Key? key}) : super(key: key);

  @override
  State<MaketThree> createState() => _MaketThreeState();
}


class _MaketThreeState extends State<MaketThree> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
resizeToAvoidBottomInset: false,
      
appBar: AppBar(title: Text('Meditate',style: TextStyle(fontWeight: FontWeight.bold),),backgroundColor: Colors.white,foregroundColor: Colors.black,actions: [
Icon(Icons.search),

Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0))
], 


),

  body: SingleChildScrollView(
     scrollDirection:Axis.vertical,
     child:Column(
children: [
 
Scrollbar( child:SingleChildScrollView(
  
  scrollDirection: Axis.horizontal,
  child: Row(children: [
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 50.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 3, 158, 162),
      border:  Border.all(color: Color.fromARGB(255, 3, 158, 162)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('All', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 255, 253, 253)),),),
  ),
),
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 150.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 239, 254, 255),
      border:  Border.all(color: Color.fromARGB(255, 239, 254, 255)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('Bible In Year', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 3, 158, 162)),),),
  ),
),
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 75.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 239, 254, 255),
      border:  Border.all(color: Color.fromARGB(255, 239, 254, 255)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('Dailies', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 3, 158, 162)),),),
  ),
),
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 75.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 239, 254, 255),
      border:  Border.all(color: Color.fromARGB(255, 239, 254, 255)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('Minutes', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 3, 158, 162)),),),
  ),
),
InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 90.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 239, 254, 255),
      border:  Border.all(color: Color.fromARGB(255, 239, 254, 255)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('November', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 3, 158, 162)),),),
  ),
),


]),),),

SingleChildScrollView(
  scrollDirection: Axis.vertical,
  
  child:Column(
    children:[
Container(
  padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
  width: 350,
  height: 200,
  alignment: Alignment.center,
child:Image.asset('images/SunAndMoon.png'),
),
Container(
  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
  alignment: Alignment.centerLeft,
  child: const Text('A Song of a Moon',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
),
Container(
  padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
  alignment: Alignment.centerLeft,
  child: const Text('Start with the basics',style: TextStyle(fontSize: 16),),
),
Expanded(flex:0,child: Row (  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,children: [
  
  Padding( padding: EdgeInsets.fromLTRB(20, 5, 0, 0),child: Icon(
  Icons.favorite_border,
  
  color: Color.fromARGB(255, 0, 0, 0),)
,),

Container(
  padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
child:Text('9 Sessions',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0)),)

),
Container(
  padding: EdgeInsets.fromLTRB(150, 10, 0, 0),

child:Text('Start',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0)),)

),
Container(
  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),

child:Text('>',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),)

),

]
),
),

Padding(
padding: const EdgeInsets.fromLTRB(14, 0, 6, 0),
child: Column(children: [
Padding(
padding: EdgeInsets.only(bottom: 15),
child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(

width: 170,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20.0),
border: Border.all(color: Colors.grey, width: 0.2)),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset('images/SleepHour.png'),
const Padding(
padding: EdgeInsets.all(4),
child: Text(
"The Sleep Hour",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold),
),
),
const Padding(
padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
child: Text(
"Ashna Mukherjee",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 14,
),
),
),
Padding(
padding: EdgeInsets.all(4),
child: Row(
mainAxisAlignment: MainAxisAlignment.start,
children: const [
Icon(
Icons.favorite_border,
size: 13.0,
),
Expanded(
child: Text(
'3 Sessions',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
),
Text(
'Start',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
Icon(
Icons.navigate_next,
color: Colors.black,
size: 20.0,
),
],
),
),
]),
),
Container(
width: 170,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20.0),
border: Border.all(color: Colors.grey, width: 0.2)),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset('images/EasyOnTheMission.png'),
const Padding(
padding: EdgeInsets.all(4),
child: Text(
"Easy On The Mission",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold),
),
),
const Padding(
padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
child: Text(
"Peter Mach",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 14,
),
),
),
Padding(
padding: EdgeInsets.all(4),
child: Row(
mainAxisAlignment: MainAxisAlignment.start,
children: const [
Icon(
Icons.favorite_border,
size: 13.0,
),
Expanded(
child: Text(
'5 minutes',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
),
Text(
'Start',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
Icon(
Icons.navigate_next,
color: Colors.black,
size: 20.0,
),
],
),
),
]),
),
],
),),
Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(
width: 170,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20.0),
border: Border.all(color: Colors.grey, width: 0.2)),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset('images/RelaxWithMe.png'),
const Padding(
padding: EdgeInsets.all(4),
child: Text(
"Relax With Me",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold),
),
),
const Padding(
padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
child: Text(
"Amanda James",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 14,
),
),
),
Padding(
padding: EdgeInsets.all(4),
child: Row(
mainAxisAlignment: MainAxisAlignment.start,
children: const [
Icon(
Icons.favorite_border,
size: 13.0,
),
Expanded(
child: Text(
'3 Sessions',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
),
Text(
'Start',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
Icon(
Icons.navigate_next,
color: Colors.black,
size: 20.0,
),
],
),
),
]),
),
Container(
width: 170,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20.0),
border: Border.all(color: Colors.grey, width: 0.2)),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset('images/SunAndEnergy.png'),
const Padding(
padding: EdgeInsets.all(4),
child: Text(
"Sun and Energy",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold),
),
),
const Padding(
padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
child: Text(
"Mecheal Hui",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 14,
),
),
),
Padding(
padding: EdgeInsets.all(4),
child: Row(
mainAxisAlignment: MainAxisAlignment.start,
children: const [
Icon(
Icons.favorite_border,
size: 13.0,
),
Expanded(
child: Text(
'5 minutes',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
),
Text(
'Start',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
Icon(
Icons.navigate_next,
color: Colors.black,
size: 20.0,
),
],
),
),
]),
),
],
),
]),
),
],
),


),

],
  ),),
 
    );
  }
}


