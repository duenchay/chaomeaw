import 'package:chaomeawmeow/model/city.dart';
import 'package:flutter/material.dart';

// import '../imgg.dart';


class MyGridView extends StatelessWidget {
  final List<City> allCities;
  MyGridView({Key key, this.allCities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 7 / 8, // 5.0/9.0
      children: _getGridViewItems(context),
    );
  }
//  _getGridViewItems_1(BuildContext context){
//    List<Widget> allWidgets = new List<Widget>();
//    for (int i = 0; i < allCities.length; i++) {
//      var widget = new Text(allCities[i].name);
//      allWidgets.add(widget);
//    };
//    return allWidgets;
//  }

  _getGridViewItems(BuildContext context) {
    List<Widget> allWidgets = new List<Widget>();
    for (int i = 0; i < allCities.length; i++) {
      var widget = _getGridItemUI(context, allCities[i]);
      allWidgets.add(widget);
    }
    return allWidgets;
  }

  // Create individual item
  _getGridItemUI(BuildContext context, City item) {
    return new InkWell(
        // onTap: () {
        //   _showSnackBar(context, item);
        // },
        
        child: new Card(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(child: Image.network( item.imglink,fit: BoxFit.fill,height:80,width:120,)),
              
              // new Image.asset(
              //   "assets/" + item.imglink,
              //   fit: BoxFit.fill,
              //   //height:100.0,
              // ),
              new Expanded(
                  child: new Center(
                      child: new Column(
                        children: <Widget>[
                          new SizedBox(height: 8),
                          new Text(
                            item.name,
                            style: new TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          new Text(item.country),
                          new Text('Population \n ${item.population}' , textAlign: TextAlign.center,)
                        ],
                      )))
            ],
          ),
          elevation: 2.0,
          margin: EdgeInsets.all(8),
          
          
        ));
  }
// onTap: () {Navigator.of(context).pop();
  /// This will show snackbar at bottom when user tap on Grid item
  // _ontapphoto(BuildContext context, City item) {
  //   final SnackBar objSnackbar = new SnackBar(
  //     content: new Text("${item.name} is a city in ${item.country}"),
  //     backgroundColor: Colors.black,
  //   );

  //   Scaffold.of(context).showSnackBar(objSnackbar);
  // }
  
}
