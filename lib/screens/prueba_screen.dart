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
        backgroundBuilder: (_) => const BackgroundWidget(),
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 80, 0, 0),
          child: ElevatedButton(
            child: const Text('Menu'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}

class NumberWidget extends StatelessWidget {
  const NumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //No calcular a mano nada, solo para ver funcionamiento
        //Se pusieron medidas aproximadas
        SizedBox(height: 120,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: NumberSelector(),
            ),
            SizedBox(
              width: 60,
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: NumberSelector(),
            ),
          ],
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

class VagonWidget extends StatelessWidget {
  final int cantidadSlots = 2;

  VagonWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mi Vagón')),
      body: Center(
        child: Column(
          children: [
            Text('Número de slots: $cantidadSlots'),
          ],
        ),
      ),
    );
  }

}



