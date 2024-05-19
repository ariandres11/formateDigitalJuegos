import 'package:app/assets.dart';
import 'package:app/trenes_game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class Vagon extends SpriteComponent with HasGameRef<TrenesGame>{
  Vagon({required this.cantidadSlots, required this.vagonPosition});


  final Vector2 vagonPosition;
  //Opciones actuales: 2 y 3
  final int cantidadSlots;

  @override
  Future<void> onLoad() async {
    final vagon = await Flame.images.load(Assets.vagon);
    final vagon2 = await Flame.images.load(Assets.vagon2);
    final vagon3 = await Flame.images.load(Assets.vagon3);

    size = Vector2(100, 100);

    //Cambiar por dibujo dinamico
    if(cantidadSlots == 3){
      sprite = Sprite(vagon3);
    }else{
      sprite = Sprite(vagon2);
    }
    position = vagonPosition;
  }
}