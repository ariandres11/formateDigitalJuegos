import 'package:app/trenes_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../assets.dart';
import '../components/number_selector.dart';

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
      //backgroundBuilder: Builder(builder: (BuildContext context) => const BackgroundWidget(),),
      overlayBuilderMap: {
          'Volver' : (context, game) {
            return const VolverWidget();
          },
          'NumberSelector' : (context,game){
            return const NumberWidget();
          }
      },
      game: TrenesGame(),
    );
  }
}

class VolverWidget extends StatelessWidget {
  const VolverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Estas en el juego, si presionas vas al menu'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

class NumberWidget extends StatelessWidget {
  const NumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: NumberSelector(),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: NumberSelector(),
        ),
      ],
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage(
        Assets.background,
    ),
    //fit: BoxFit.cover,
    ),
    ),
    alignment: Alignment.center,
    );
  }
}

