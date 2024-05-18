import 'package:app/screens/debug_screen.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../trenes_game.dart';

class JuegoScreen extends StatelessWidget {
  final TrenesGame game;

  JuegoScreen(this.game);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        //Sin el SCSV hace overf
      SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Text('Estas en debug, si presionas vas al juego'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DebugScreen()),
                  );
                },
              ),
              GameWidget(game: game),
            ],
          ),
        ),
      )
      ,);
  }
}
