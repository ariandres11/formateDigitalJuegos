import 'package:flutter/material.dart';
import 'package:app/assets.dart';
import 'package:app/trenes_game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class Bolsa extends SpriteComponent with HasGameRef<TrenesGame> {
  Bolsa({required this.bolsaPosition});

  final Vector2 bolsaPosition;

  @override
  Future<void> onLoad() async {
    final bolsa = await Flame.images.load(Assets.bolsa);
    size = Vector2(75, 90);
    sprite = Sprite(bolsa);
    position = bolsaPosition;
  }
}
