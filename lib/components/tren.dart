import 'package:flame/components.dart';
import 'package:flame/flame.dart';

import '../assets.dart';

class Tren extends SpriteComponent{
  Tren();

  final int cantidadVagones = 2;

  @override

  Future<void> onLoad () async{
    final cabeceraTren  = await Flame.images.load(Assets.cabeceraTren);
    final vagones  = await Flame.images.load(Assets.vagones);

  }
}