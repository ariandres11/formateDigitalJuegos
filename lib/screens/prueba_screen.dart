import 'package:app/trenes_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../assets.dart';
import '../components/number_selector.dart';

class PruebaScreen extends StatelessWidget{
  const PruebaScreen({super.key});

  @override
  Widget build(BuildContext context){
    return GameWidget(
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
          }
      },
      game: TrenesGame(30),
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
                  child: NumberSelector(maximoNum: maximoNum, key: key),
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

class BotonPerdiste extends StatelessWidget {
  const BotonPerdiste({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            child: Column(
              children: [
                Text('Perdiste'),
                ElevatedButton(
                    onPressed: () { Navigator.pop(context);},
                    child: Text('Volver al menu')
                ),
              ],
            ),
        ),
    );
  }
}




