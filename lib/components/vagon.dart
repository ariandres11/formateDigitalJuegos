import 'dart:js_interop';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/flame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class Vagon extends SpriteComponent{
  Vagon(this.cantidadSlots);

  final int cantidadSlots;

  List<SpriteComponent> slots = [];

  //final ImageProvider slotImage = AssetImage(Assets.slot);

  @override

  Future<void> onLoad () async{
    final vagonImage  = await Flame.images.load(Assets.vagon);
    final slotImage = await Flame.images.load(Assets.slot);
    for (int i = 0; i < cantidadSlots; i++){
      final slot = SpriteComponent.fromImage(slotImage,
      size: Vector2(50, 50),
      position: Vector2(i * 60, 0),
      );
      //Agregar a la lista
      slots.add(slot);
    }
  }
  @override

  void render(Canvas canvas){
    super.render(canvas);

    slots.forEach((slot) => slot.render(canvas));

  }


}