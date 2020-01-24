
import 'dart:convert';
import 'package:chaomeawmeow/detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:chaomeawmeow/BreedDetail.dart';
// import 'model/city.dart';
// import 'widgets/gridview.dart';


// class Breed extends StatelessWidget {
//   final List<City> _allCities = City.allCities();

//   Breed() { }
//   final GlobalKey scaffoldKey = new GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         key: scaffoldKey,
//         appBar: new AppBar(
//           title: new Text(
//             "Cites around world",
//             style: new TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87),
//           ),
//         ),
//         body: new Padding(
//             padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//             child: getHomePageBody(context)
//         ),
//       );
//   }

//   getHomePageBody(BuildContext context) {


//     return new MyGridView(allCities: _allCities);




// //    if (MediaQuery.of(context).orientation != Orientation.portrait)
// //    bool check = true ;
// //    if(check == false) {
// //       return ListView.builder(
// //         itemCount: _allCities.length,
// //         itemBuilder: _getListItemUI,
// //         padding: EdgeInsets.all(0.0),
// //       );
// //     } else{
// //     }
//   }

//   Widget _getListItemUI(BuildContext context, int index,
//       {double imgwidth: 100.0}) {
//     return new Card(
//         child: new Column(
//           children: <Widget>[
//             new ListTile(
//               leading: new Image.asset(
//                 "assets/" + _allCities[index].imglink,
//                 fit: BoxFit.fitHeight,
//                 width: imgwidth,
//               ),
//               title: new Text(
//                 _allCities[index].name,
//                 style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
//               ),
//               subtitle: new Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     new Text(_allCities[index].country,
//                         style: new TextStyle(
//                             fontSize: 13.0, fontWeight: FontWeight.normal)),
//                     new Text('Population: ${_allCities[index].population}',
//                         style: new TextStyle(
//                             fontSize: 11.0, fontWeight: FontWeight.normal)),
//                   ]),
//               onTap: () {
//                 _showSnackBar(context, _allCities[index]);
//               },
//             )
//           ],
//         ));
//   }

//   _showSnackBar(BuildContext context, City item) {
//     final SnackBar objSnackbar = new SnackBar(
//       content: new Text("${item.name} is a city in ${item.country}"),
//       backgroundColor: Colors.amber,
//     );

//     Scaffold.of(context).showSnackBar(objSnackbar);
//   }

// }
class Breed extends StatefulWidget {
  @override
  _BreedState createState() => _BreedState();
}

class _BreedState extends State<Breed> {
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
      
  //   );
  // }
  var url =
      "https://raw.githubusercontent.com/duenchay/chaomeaw/master/chaomeawmeow/breed.json";

  PokeHub pokeHub;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    pokeHub = PokeHub.fromJson(decodedJson);
    print(pokeHub.toJson());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Poke App"),
        backgroundColor: Colors.cyan,
      ),
      body: pokeHub == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.count(
              crossAxisCount: 2,
              children: pokeHub.pokemon
                  .map((poke) => Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BreedDetail(
                                          pokemon: poke,
                                        )));
                          },
                          child: Hero(
                            tag: poke.img,
                            child: Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    width:
                                        MediaQuery.of(context).size.width * 0.19,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(poke.img))),
                                  ),
                                  Text(
                                    poke.name,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
      // drawer: Drawer(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.cyan,
      //   child: Icon(Icons.refresh),
      // ),
    );
  }
}
