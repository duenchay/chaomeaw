import 'package:chaomeawmeow/Articlesaboutcats.dart';
import 'package:chaomeawmeow/Breed.dart';
import 'package:chaomeawmeow/Disease.dart';
import 'package:chaomeawmeow/Home.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final _pageOptions = [Home(),AboutCats(), Breed(), Disease()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Fancy Bottom Navigation Bar"),
      //   backgroundColor: Colors.tealAccent,
      // ),
      body: _pageOptions[currentPage],
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.deepPurple[200],
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
           TabData(iconData: Icons.sentiment_very_satisfied, title: "About Cats"),
          TabData(iconData: Icons.pageview, title: "Breed"),
          TabData(iconData: Icons.local_hospital, title: "Disease"),
         
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