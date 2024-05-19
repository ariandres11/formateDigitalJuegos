import 'package:app/assets.dart';
import 'package:app/trenes_game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class Vagon extends SpriteComponent with HasGameRef<TrenesGame>{
  Vagon({required this.vagonPosition});

  @override
  final Vector2 vagonPosition;

  @override
  Future<void> onLoad() async {
    final vagon = await Flame.images.load(Assets.vagon);
    size = Vector2(100, 100);
    sprite = Sprite(vagon);
    position = vagonPosition;
  }
}