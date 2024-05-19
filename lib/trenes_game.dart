import 'dart:async';
import 'package:app/components/bolsa.dart';
import 'package:app/components/carbon.dart';
import 'package:app/components/tolva.dart';
import 'package:app/components/vagon.dart';
import 'package:flame/game.dart';

class TrenesGame extends FlameGame{
  TrenesGame(this.cantidadCarbon);

  final int cantidadCarbon;

  final  volverOverlay = 'Volver';
  final numberOverlay = 'NumberSelector';

  @override
  Future<void> onLoad() async{
    final screenWidth = size.x;
    final screenHigth = size.y;
    addAll([
      //Tolvas
      Tolva(tolvaPosition: Vector2((screenWidth/2) - 185, (screenHigth / 2) - 120)),
      Tolva(tolvaPosition: Vector2((screenWidth/2) + 95,(screenHigth / 2) - 120)),
      //Bolsa
      Bolsa( bolsaPosition: Vector2((screenWidth/2) - 20, 40)),
      //Vagones
      Vagon(cantidadSlots:3, vagonPosition: Vector2((screenWidth/2) - 175, screenHigth - 200)),
      Vagon(cantidadSlots: 2, vagonPosition: Vector2((screenWidth/2) + 105 ,screenHigth - 200)),

    ]);
    bool tolvapar = true;
    for(int i = 0; i < cantidadCarbon; i++) {
      tolvapar = !tolvapar;
      if (tolvapar) {
        add(Carbon(carbonPosition: Vector2((screenWidth/2) - 130, 240 + i * 10.0)));
      } else {
        add(Carbon(carbonPosition: Vector2((screenWidth/2) + 150, 240 + i * 10.0)));
      }
    }
    overlays.add(volverOverlay);
    overlays.add(numberOverlay);
  }
}
