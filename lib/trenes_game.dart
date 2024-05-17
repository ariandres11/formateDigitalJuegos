
import 'package:app/components/tolva.dart';
import 'package:app/screens/debug_screen.dart';
import 'package:app/screens/menu.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'components/number_selector.dart';

class TrenesGame extends FlameGame with TapDetector{
  TrenesGame();


  @override
  Future<void> onLoad() async{
    addAll([
      //Background(),
      //Instancias de tolva con posicion
      Tolva(tolvaPosition: Vector2(40,240)),
      Tolva(tolvaPosition: Vector2(260,240)),

    ]);
    NumberSelector(upperLimit: 10);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: ElevatedButton(
          child: Text('Volver al menu'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DebugScreen()),
            );
          },
        ),
      ),
    );
  }


}
