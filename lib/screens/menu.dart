import 'package:app/components/button.dart';
import 'package:app/trenes_game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'game_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => Menu();
}

class Menu extends State<HomePage> {
  List niveles = [
    [
      "1",
      30,
      12,
      [2, 3]
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          //itemCount: niveles.length,
          itemBuilder: (context, index) {
            return ListView(
              children: <Widget>[
                ElevatedButton(
                    child: Text('Jugar'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JuegoScreen(TrenesGame())),
                      );
                    }),
              ],
            );
          }),
    );
  }
}
/*            return Button(
                text: "nivel " + niveles[index][0],
                carbon: niveles[index][1],
                vagones: niveles[index][2],
                slots: niveles[index][3]
            );*/
