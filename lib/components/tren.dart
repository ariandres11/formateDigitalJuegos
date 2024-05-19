

import 'package:flame/components.dart';
import 'package:flame/flame.dart';

import '../assets.dart';

class Tren extends SpriteComponent{
  Tren(this.cantidadVagones);

  final int cantidadVagones;


  @override

  Future<void> onLoad () async{
    final cabeceraTren  = await Flame.images.load(Assets.cabeceraTren);
    final vagones  = await Flame.images.load(Assets.vagones);
    final slot  = await Flame.images.load(Assets.vagon);




  }
}