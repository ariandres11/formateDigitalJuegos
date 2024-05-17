
import 'package:app/screens/prueba_screen.dart';
import 'package:app/trenes_game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DebugScreen extends StatelessWidget{
  const DebugScreen({super.key});

   /* final TrenesGame game;
    static const String id = 'mainMenu';

    const DebugScreen({
      Key?key,
      required this.game,
}) : super(key: key);
*/
    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Container(
          child: ElevatedButton(
            child: Text('Estas en debug'),
            onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PruebaScreen()),
                );
              },
          ),
        ),
      );
    }
}