import 'package:app/components/vagon.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

import '../assets.dart';

class Tren extends SpriteComponent{
  final int cantidadVagones;
  final Vector2 cabeceraPosition;
  Tren({
    required this.cantidadVagones,
    required this.cabeceraPosition,
});



  @override

  Future<void> onLoad () async{
    final cabeceraTren = await Flame.images.load(Assets.cabeceraTren);
    size = Vector2(200, 100);
    sprite = Sprite(cabeceraTren);
    position = cabeceraPosition;
    for (int i = 0; i < (cantidadVagones/2); i++){
      Vagon(cantidadSlots:3, vagonPosition: Vector2(cabeceraPosition[0]* i + 150, cabeceraPosition[1]));
      Vagon(cantidadSlots: 2, vagonPosition: Vector2(cabeceraPosition[0]*i+300 ,cabeceraPosition[1]));
    }
  }
}