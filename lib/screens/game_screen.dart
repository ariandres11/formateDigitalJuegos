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
      Column(
        children: <Widget>[
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DebugScreen())
            );
          },
            // Reemplazar por Volver al menu
        child: Text('Volver a debug screen'),
          ),
          GameWidget(game: game)
        ],
      )
      ,);
    return GameWidget(game: game);
  }
}
