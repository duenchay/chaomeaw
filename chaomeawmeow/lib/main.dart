import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'Articlesaboutcats.dart';
import 'Breed.dart';
import 'Disease.dart';
import 'Home.dart';

// import 'Home.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // brightness: Brightness.dark,
    primaryColor: Colors.greenAccent,
    // accentColor: Colors.cyan[600], 
          

          // primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final _pageOptions = [Home(), Breed(), Disease(), Articlesaboutcats()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Fancy Bottom Navigation Bar"),
      //   backgroundColor: Colors.tealAccent,
      // ),
      body: _pageOptions[currentPage],
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.tealAccent,
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.pageview, title: "Breed"),
          TabData(iconData: Icons.local_hospital, title: "Disease"),
          TabData(iconData: Icons.sentiment_very_satisfied, title: "Articlesaboutcats")
        ],
        onTabChangedListener: (int position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}