import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MindDeepRelax extends StatefulWidget {
  const MindDeepRelax({Key? key}) : super(key: key);

  @override
  State<MindDeepRelax> createState() => _MindDeepRelaxState();
}


class _MindDeepRelaxState extends State<MindDeepRelax> { @override
  Widget build(BuildContext context) {
         return Scaffold(
             body: SafeArea(
              child: Column(
              children: [Image.asset("images/chel.jpg", width: 800, height: 260,),
               
                Container(
                   
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10, top: 5),
                     child: Text('Sire Denatrius', style: TextStyle(), textAlign: TextAlign.left,)
                ),
                Container(

                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10, top: 3),
                     child: Text('Deep Dark Fantasies', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.left,)
                ),
                Container(
                   
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                     child: Text('Join the Dungeon as we prepare over 300 bucks to relax and feel joy with the Billy and Van session across the World.', style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,)
                ),

                InkWell(
                  onTap: () {
                    print('Out of my way Jabroni');
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 57,
                    width: 350,
                    // color: Color.fromARGB(255, 0, 206, 182),
                    decoration: BoxDecoration(
              
               
               borderRadius: BorderRadius.circular(50),
               color: Color.fromARGB(255, 0, 206, 182),
              
              
                ),
                 padding: EdgeInsets.only(top: 12),
                 child: Text('► Play Next Session', style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center, ),
                 )
                  
                ),

              Row(children: [
                 InkWell(
                   onTap: () {
                     print('AAAAAHHHHHHHHH');
                   },
                  child:
                   Container(
                    
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 60,
                    height: 60,
                    
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/play.png"), fit: BoxFit.cover,) ,borderRadius: BorderRadius.circular(20), color: Colors.blueAccent),
                                        
                  ),

                 ),
                Padding(padding: EdgeInsets.only(left: 10, top: 60)),
                const Text('Sweet Cocks', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), softWrap: true,),
                
                 Padding(padding: EdgeInsets.only(left: 145)),
                 const Text('···', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.grey),),
                
                
              ],),
               Row(children: [
                 InkWell(
                   onTap: () {
                     print('OH IM FUCKIN CUMMIN');
                   },
                  child:
                   Container(
                    
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/play.png"), fit: BoxFit.cover,) ,borderRadius: BorderRadius.circular(20), color: Colors.greenAccent),
                                        
                  ),

                 ),
                Padding(padding: EdgeInsets.only(left: 10, top: 60)),
                const Text('A Cum Dream', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Padding(padding: EdgeInsets.only(left: 138)),
                const Text('···', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.grey),)
              ],),
               Row(children: [
                 InkWell(
                   onTap: () {
                     print('Fisting is 300bucks');
                   },
                  child:
                   Container(
                    
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/play.png"), fit: BoxFit.cover,) ,borderRadius: BorderRadius.circular(20), color: Colors.orangeAccent),
                                        
                  ),

                 ),
                Padding(padding: EdgeInsets.only(left: 10, top: 60)),
                const Text('Dungeon Explore', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Padding(padding: EdgeInsets.only(left: 110)),
                const Text('···', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.grey),)
              ],),
            ],

              

        ),
        
      
             
      ),
      
    );
  }
}