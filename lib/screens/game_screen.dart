import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../trenes_game.dart';

class JuegoScreen extends StatelessWidget {
  final TrenesGame game;
  JuegoScreen(this.game);

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
