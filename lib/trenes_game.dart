import 'package:app/components/tolva.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class TrenesGame extends FlameGame with TapDetector{
  TrenesGame();
  final  volverOverlay = 'Volver';
  final numberOverlay = 'NumberSelector';

  @override
  Future<void> onLoad() async{
    addAll([
      //Background(),
      //Instancias de tolva con posicion
      Tolva(tolvaPosition: Vector2(40,240)),
      Tolva(tolvaPosition: Vector2(260,240)),
    ]);
    //overlays.add(volverOverlay);
    //overlays.add(numberOverlay);
    //Descomentar luego de crear NumberSelector
  }
}
