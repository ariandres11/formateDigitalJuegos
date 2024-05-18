import 'package:app/components/bolsa.dart';
import 'package:app/components/tolva.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class TrenesGame extends FlameGame with TapDetector{
  TrenesGame();

  @override
  Future<void> onLoad() async{
    addAll([
      //Instancias de tolva con posicion
      Tolva(tolvaPosition: Vector2(0,0)),
      Tolva(tolvaPosition: Vector2(140,0)),
      //Bolsa( bolsaPosition: Vector2(40,100)),
    ]);
  }
}
