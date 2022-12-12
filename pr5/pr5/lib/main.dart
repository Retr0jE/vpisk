import 'package:flutter/material.dart';
import 'package:pr5/screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
     final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  runApp(MyApp(sharedPreferences));
}

class MyApp extends StatelessWidget {
       final SharedPreferences prefs;
  const MyApp(this.prefs,{super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'secondscreen':(context) =>  Screen(texet: prefs.getString('texet') ?? '' )},
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(prefs, title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {

       final SharedPreferences prefs;

  const MyHomePage(this.prefs, {super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   
  void _incrementCounter() async {
    setState(() {
      txt = "nigga10";
    });
    await widget.prefs.setString('texet', txt);
  }

String txt='';
  @override
  void initState() {
     txt = widget.prefs.getString('texet') ?? '';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
    
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TextField(
                
            // ),
             Text(
              '$txt',
            ),
            FloatingActionButton(onPressed: (() {
               List<Object> toScreen=<Object>[];
                  toScreen.add(txt);
                  toScreen.add(widget.prefs.getString('texet')??'');
              Navigator.pushNamed(context, "secondscreen", arguments: toScreen);
            }
            )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
