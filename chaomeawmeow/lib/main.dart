import 'package:chaomeawmeow/mainnext.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_splash/flutter_splash.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(new MaterialApp(
    title: 'Chao Meaw Meow',
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 7,
      navigateAfterSeconds: new Myy(),
      
      title: new Text('',
      
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 7.0
      ),),
      image: new Image.network('https://raw.githubusercontent.com/duenchay/chaomeaw/master/chaomeawmeow/assets/images/ppp.gif'),
      backgroundColor: Colors.pink[50],
      styleTextUnderTheLoader: new TextStyle(),
      
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    );
  }
}

class Myy extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chao Meaw Meow',
        theme: ThemeData(
          // brightness: Brightness.dark,
    primaryColor: Colors.red[200],
    // accentColor: Colors.cyan[600], 
          // primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}