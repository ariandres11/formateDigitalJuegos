import 'dart:html';

import 'package:app/components/number_selector.dart';
import 'package:app/screens/debug_screen.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets.dart';
import '../trenes_game.dart';
import 'menu.dart';

class JuegoScreen extends StatelessWidget {
  final TrenesGame game;

  JuegoScreen(this.game);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      //Sin el SCSV hace overf
      SingleChildScrollView(
        child: Center(
          child: Container(
            width: 600,
            height: 800,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.background,
                ),
                //fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            child: Stack(
                children: <Widget>[
                Container(
                height: 400,
                width: 400,
                child: GameWidget(game: game)
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: NumberSelector(),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: NumberSelector(),
                ),
              ],
            ),

            Center(
              child: Column(
                  children: [
              ElevatedButton(
              child: Text('Estas en el juego, si presionas vas al menu'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menu()),
                );
              },
            ),


          ],
        ),
      ),
      //GameWidget(game: game),
      ],
    ),)
    ,
    )
    ,
    )
    ,
    );
  }
}
