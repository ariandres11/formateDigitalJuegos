

import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/flame.dart';
import 'package:flutter/cupertino.dart';

import '../assets.dart';

class Vagon extends SpriteComponent{
  Vagon(this.cantidadSlots, this.vagonImage, this.slotImage);

  final int cantidadSlots;


  final Image vagonImage;
  final Image slotImage;
  //final ImageProvider slotImage = AssetImage(Assets.slot);

  @override

  Future<void> onLoad () async{
    final vagonImage  = await Flame.images.load(Assets.vagon);
    final slotImage = await Flame.images.load(Assets.slot);

  }

  @override

  void render(Canvas canvas){
    super.render(canvas);

    final int slotWidth = 30;
    final int slotHeight = 60;

    for(int i = 0; i < cantidadSlots; i++){
      final slotRect = Rect.fromLTWH(20, 0, slotWidth as double, slotHeight as double);
      //canvas.drawImage(slotImage.image, Offset(0, 0), Paint());
      //canvas.drawImage(slotImage,slotRect.topLeft, Paint());
    }
  }



  @override

  Widget build(BuildContext context){
    return  Container(

    );
  }
}