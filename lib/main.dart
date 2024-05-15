import 'package:app/trenes_game.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/number_selector.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();

  final game = TrenesGame();
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            GameWidget(
              game: game,
            ),
            Positioned(
              bottom: 100,
              left: 120,
              child: SizedBox(
                width: 120,
                height: 120,
                child: NumberSelector(upperLimit: 10),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
