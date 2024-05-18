import 'package:app/components/number_selector.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../assets.dart';
import '../trenes_game.dart';
import 'menu.dart';

class JuegoScreen extends StatelessWidget {
  final TrenesGame game;

  JuegoScreen(this.game);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //Sin el SCSV hace overf
          SingleChildScrollView(
        child: Center(
          child: Container(
            width: 600,
            height: 800,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.background,
                ),
                fit: BoxFit.cover,
                //fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[

                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: Container(
                        alignment: Alignment.center,
                        width: 320, height: 100, child: GameWidget(game: game)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 120, 0, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: NumberSelector(),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        child: NumberSelector(),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 500, 30),
                    child: Column(
                      children: [
                        ElevatedButton(
                          child: Text('Menu'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Menu()),
                            );
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                //GameWidget(game: game),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
