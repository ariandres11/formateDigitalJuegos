import 'package:flutter/material.dart';

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