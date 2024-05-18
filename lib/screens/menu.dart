import 'package:flutter/material.dart';

import '../assets.dart';
import '../trenes_game.dart';
import 'game_screen.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key});

  @override
  Widget build(BuildContext context) {
    final game = TrenesGame(); // Instancia de TrenesGame

    return Scaffold(
      body: Center(
        child: Container(
          width: 600,
          height: 800,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.background,
              ),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text('Trenes', style: TextStyle(fontSize: 52)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  child: const Text('Salir'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JuegoScreen(game)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
