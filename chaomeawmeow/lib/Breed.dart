
import 'dart:convert';
import 'package:chaomeawmeow/detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:chaomeawmeow/BreedDetail.dart';

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
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        title: Text("🐱 Breed"),
        backgroundColor: Colors.indigo[300],
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
                                        0.11,
                                    width:
                                        MediaQuery.of(context).size.width * 0.30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(poke.img))),
                                  ),
                                  Text(
                                    poke.name,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              color: Colors.indigo[200],
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
    
    );
  }
}