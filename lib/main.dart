import 'package:app/screens/debug_screen.dart';
import 'package:app/screens/menu.dart';
import 'package:app/trenes_game.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/components/custom_scroll_behavior.dart';
import 'components/number_selector.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(

    //NO TOCAR, HACE COMPATIBLE LO TACTIL CON LO WEB
    scrollBehavior: CustomScrollBehavior(),

    //cambiar por Menu() cuando menu sea Stateless
    home: Menu(),
  );
}