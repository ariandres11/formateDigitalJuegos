import 'dart:async';
import 'package:app/cabecera_tren.dart';
import 'package:app/components/bolsa.dart';
import 'package:app/components/carbon.dart';
import 'package:app/components/tolva.dart';
import 'package:app/components/vagon.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class TrenesGame extends FlameGame{
  TrenesGame(this.cantidadCarbon);

  final int cantidadCarbon;
  final  volverOverlay = 'Volver';
  final numberOverlay = 'NumberSelector';

  @override
  Future<void> onLoad() async{

    addAll([
      //Tolvas
      Tolva(tolvaPosition: Vector2(620,240)),
      Tolva(tolvaPosition: Vector2(780,240)),
      //Bolsa
      Bolsa( bolsaPosition: Vector2(700,40)),
      //Vagones
      Vagon(cantidadSlots:3, vagonPosition: Vector2(620,500)),
      Vagon(cantidadSlots: 2, vagonPosition: Vector2(790,500)),

    ]);
    bool tolvapar = true;
    for(int i = 0; i < cantidadCarbon; i++) {
      tolvapar = !tolvapar;
      if (tolvapar) {
        add(Carbon(carbonPosition: Vector2(780, 240 + i * 10.0)));
      } else {
        add(Carbon(carbonPosition: Vector2(620, 240 + i * 10.0)));
      }
    }
    overlays.add(volverOverlay);
    overlays.add(numberOverlay);
  }
}
