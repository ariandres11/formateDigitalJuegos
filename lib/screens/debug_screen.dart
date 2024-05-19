import 'package:app/trenes_game.dart';
import 'package:flutter/material.dart';
import 'game_screen.dart';

class DebugScreen extends StatelessWidget{
  const DebugScreen({super.key});


    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Container(
          child: ElevatedButton(
            child: Text('Estas en debug, si presionas vas al juego'),
            onPressed: (){}/*{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JuegoScreen(TrenesGame())),
              );
              },*/
          ),
        ),
      );
    }
}