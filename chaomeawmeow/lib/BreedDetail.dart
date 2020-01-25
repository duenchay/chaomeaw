import 'package:chaomeawmeow/detail.dart';
import 'package:flutter/material.dart';


class BreedDetail extends StatelessWidget {
  final Pokemon pokemon;

  BreedDetail({this.pokemon});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 2.0,
            width: MediaQuery.of(context).size.width - 20,
            left: 12.0,
            top: MediaQuery.of(context).size.height * 0.12,
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
                      height: 40.0,
                    ),
                    
                    Text(
                      pokemon.name,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text("${pokemon.height}"),
                    Text("🏡  ${pokemon.weight}" ,style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("📌  ${pokemon.candy} ",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("🐾 ประเทศ: ${pokemon.egg} ",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      "💗 ลักษณะเด่น",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.type
                          .map((t) => FilterChip(
                              backgroundColor: Colors.amber,
                              label: Text(t),
                              onSelected: (b) {}))
                          .toList(),
                    ),
                    // Text("ธาตุประจำปี",
                    //     style: TextStyle(fontWeight: FontWeight.bold)),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: pokemon.nextEvolution == null
                    //       ? <Widget>[Text("This is the final form")]
                    //       : pokemon.nextEvolution
                    //           .map((n) => FilterChip(
                    //                 backgroundColor: Colors.green,
                    //                 label: Text(
                    //                   n.name,
                    //                   style: TextStyle(color: Colors.white),
                    //                 ),
                    //                 onSelected: (b) {},
                    //               ))
                    //           .toList(),
                    // ),
                    // Text("มิ่งขวัญโชคลาบ",
                    //     style: TextStyle(fontWeight: FontWeight.bold)),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: pokemon.weaknesses
                    //           .map((n) => FilterChip(
                    //                 backgroundColor: Colors.blue,
                    //                 label: Text(
                    //                   n,
                    //                   style: TextStyle(color: Colors.white),
                    //                 ),
                    //                 onSelected: (b) {},
                    //               ))
                    //           .toList(),
                    // )
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
                  width: 200.0,
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
      backgroundColor: Colors.tealAccent[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.tealAccent[100],
        title: Text(pokemon.name),
      ),
      body: bodyWidget(context),
    ); 
  }
}