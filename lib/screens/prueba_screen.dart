import 'package:app/trenes_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PruebaScreen extends StatelessWidget{
  const PruebaScreen({super.key});

  /*final TrenesGame game;
  static const String id = 'mainMenu';

  const DebugScreen({
    Key?key,
    required this.game,
  }) : super(key: key);*/

  @override
  Widget build(BuildContext context){
    return GameWidget(
        game: TrenesGame(),
    );
  }
}