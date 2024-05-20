import 'package:app/components/vagon.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import '../assets.dart';

class Tren extends SpriteComponent {
  final int cantidadVagones;
  final Vector2 cabeceraPosition;

  Tren({
    required this.cantidadVagones,
    required this.cabeceraPosition,
  });

  @override
  Future<void> onLoad() async {
    final cabeceraTren = await Flame.images.load(Assets.cabeceraTren);
    size = Vector2(200, 100);
    sprite = Sprite(cabeceraTren);
    position = cabeceraPosition;
    //No utilizar posicion de la cabecera, hacer vector nuevo
    Vector2 vagonPosition = Vector2.zero();
    //add(Vagon(cantidadSlots: 2, vagonPosition: Vector2(vagonPosition.x - 300, 100)));
    for(int i = 0; i< cantidadVagones/2; i++){
      add(Vagon(cantidadSlots: 2, vagonPosition: Vector2(vagonPosition.x - 140 - i * 100, 0)));
      add(Vagon(cantidadSlots: 3, vagonPosition: Vector2(vagonPosition.x - 410 - i * 100, 0)));
    }
  }
}
