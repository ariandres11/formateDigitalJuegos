import 'dart:async';

import 'package:app/components/bolsa.dart';
import 'package:app/components/tolva.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

import 'cabecera_tren.dart';

class TrenesGame extends FlameGame with TapDetector{
  TrenesGame();
  final  volverOverlay = 'Volver';
  final numberOverlay = 'NumberSelector';


  @override
  Future<void> onLoad() async{

    addAll([
      //Instancias de tolva con posicion
      Tolva(tolvaPosition: Vector2(220,240)),
      Tolva(tolvaPosition: Vector2(400,240)),
      Bolsa( bolsaPosition: Vector2(300,20)),

    ]);

    //overlays.add(volverOverlay);
    overlays.add(numberOverlay);

  }

  @override
  void update(double dt){
    super.update(dt);

  }
}
