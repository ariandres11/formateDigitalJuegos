import 'package:app/trenes_game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'assets.dart';

class CabeceraTren extends SpriteComponent with HasGameRef<TrenesGame> {
  CabeceraTren();

  double initialX = 0;

  @override
  Future<void> onLoad() async {
    final cabecera = await Flame.images.load(Assets.cabeceraTren);
    size = Vector2(400, 300);

    position.y = 0;
    position.x = initialX;
    sprite = Sprite(cabecera);
  }

  /*
  @override
  void update(double dt) {
    super.update(dt);

    position.x += Config.velCabecera * dt;
  }

   */


}
