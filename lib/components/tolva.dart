import 'package:app/assets.dart';
import 'package:app/trenes_game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class Tolva extends SpriteComponent with HasGameRef<TrenesGame>{
  Tolva({required this.tolvaPosition});

  @override
  final Vector2 tolvaPosition;

  @override
  Future<void> onLoad() async {
    final tolva = await Flame.images.load(Assets.tolva);
    size = Vector2(100, 100);
    sprite = Sprite(tolva);
    position = tolvaPosition;
  }
}