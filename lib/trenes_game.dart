
import 'package:app/components/tolva.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

import 'components/number_selector.dart';

class TrenesGame extends FlameGame with TapDetector{
  TrenesGame();
  
  @override
  Future<void> onLoad() async{
    addAll([
      //Background(),
      Tolva(tolvaPosition: Vector2(40,240)),
      Tolva(tolvaPosition: Vector2(260,240)),

    ]);
    NumberSelector(upperLimit: 10);
  }
}