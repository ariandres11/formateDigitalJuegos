import 'package:app/screens/debug_screen.dart';
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
    GameWidget(game: game,initialActiveOverlays: const[DebugScreen.id], overlayBuilderMap: {
      'mainMenu' : (context, _) => DebugScreen(game: game),
    },)
  );
}

