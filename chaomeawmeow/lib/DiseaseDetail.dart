import 'package:chaomeawmeow/detail.dart';
import 'package:flutter/material.dart';


class DiseaseDetail extends StatelessWidget {
  final Pokemon pokemon;

  DiseaseDetail({this.pokemon});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width - 22,
            left: 12.0,
            top: MediaQuery.of(context).size.height * 0.01,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height:100.0,
                    ),
                    
                    Text(
                      pokemon.name,
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    Text("${pokemon.height}"),
                    // Text("📌  ${pokemon.candy} ",style:( TextStyle(fontWeight: FontWeight.bold))),
                    // Text("🐾 ประเทศ: ${pokemon.egg} ",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      "อาการ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.type
                          .map((t) => FilterChip(
                              backgroundColor: Colors.orangeAccent,
                              label: Text(t),
                              onSelected: (b) {}))
                          .toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.weaknesses
                          .map((t) => FilterChip(
                              backgroundColor: Colors.amberAccent,
                              label: Text(t),
                              onSelected: (b) {}))
                          .toList(),
                    ),
                    Text("สาเหตุ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(" ${pokemon.weight}" ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: pokemon.img,
                child: Container(
                  height: 120.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(pokemon.img))),
                )),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepOrange[100],
        title: Text(pokemon.name),
      ),
      body: bodyWidget(context),
    ); 
  }
}