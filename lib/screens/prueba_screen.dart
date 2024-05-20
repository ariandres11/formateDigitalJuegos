import 'package:app/trenes_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../assets.dart';
import '../components/number_selector.dart';
import '../game_Manager.dart';

class PruebaScreen extends StatelessWidget{
  PruebaScreen({super.key});

  final TrenesGame trenesGame = TrenesGame(30);

  @override
  Widget build(BuildContext context){
    return GameWidget(
      game: trenesGame,
        backgroundBuilder: (_) => const BackgroundWidget(),
      overlayBuilderMap: {
          'Volver' : (context, game) {
            return const VolverWidget();
          },
          'NumberSelector' : (context,game){
            return const NumberWidget(maximoNum: 30,);
          },
          'BotonPerdiste' : (context,game){
            return const BotonPerdiste();
          },
          'BotonComenzar' : (context,_) => BotonComenzar(game: trenesGame),
      },
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
            onPressed: () { Navigator.pop(context);},
          ),
        ),
      ],
    );
  }
}

class NumberWidget extends StatelessWidget {
  final int maximoNum;
  final gameManager = GameManager;

  const NumberWidget({super.key, required this.maximoNum});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 260, 0, 0),
      child: Center(

        child: Column(
          children: [
            //No calcular a mano nada, solo para ver funcionamiento
            //Se pusieron medidas aproximadas
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 100,
                  child: NumberSelector(maximoNum: maximoNum, key: key),
                ),
                const SizedBox(
                  width: 200,
                  height: 100,
                ),
                SizedBox(
                  width: 80,
                  height: 100,
                  child: NumberSelector(magittximoNum: maximoNum, key: key),
                ),
              ],
            ),
          ],
        ),
      ),
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
    fit: BoxFit.cover,
    ),
    ),
    alignment: Alignment.center,
    );
  }

}

class BotonComenzar extends StatelessWidget {
  final TrenesGame game;
  const BotonComenzar({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
          onPressed: () {game.comenzar();},
          child: const Text('Comenzar')
      ),
    );
  }
}

class BotonPerdiste extends StatelessWidget {
  const BotonPerdiste({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        child: Container(
          height: 150,
          width: 250,
          alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Perdiste'),
                ElevatedButton(
                    onPressed: () {Navigator.pop(context);},
                    child: const Text('Volver al menu')
                ),
              ],
            ),
        ),
    );
  }
}




