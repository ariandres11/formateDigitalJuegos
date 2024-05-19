import 'dart:async';
import 'package:app/components/bolsa.dart';
import 'package:app/components/tolva.dart';
import 'package:app/components/vagon.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class TrenesGame extends FlameGame with TapDetector{
  TrenesGame();
  final  volverOverlay = 'Volver';
  final numberOverlay = 'NumberSelector';

  @override
  Future<void> onLoad() async{

    addAll([
      //Instancias de tolva con posicion
      Tolva(tolvaPosition: Vector2(620,340)),
      Tolva(tolvaPosition: Vector2(780,340)),
      Bolsa( bolsaPosition: Vector2(700,40)),
      Vagon(vagonPosition: Vector2(620,500)),
      Vagon(vagonPosition: Vector2(790,500)),

    ]);
    overlays.add(volverOverlay);
    overlays.add(numberOverlay);
  }
  @override
  void update(double dt){
    super.update(dt);
  }
}
