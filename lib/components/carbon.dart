import 'package:app/assets.dart';
import 'package:app/trenes_game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class Carbon extends SpriteComponent with HasGameRef<TrenesGame>{
  Carbon({required this.carbonPosition});
  final Vector2 carbonPosition;

  @override
  Future<void> onLoad() async {
    final carbon = await Flame.images.load(Assets.carbon);
    size = Vector2(10, 10);
    sprite = Sprite(carbon);
    position = carbonPosition;
  }
}