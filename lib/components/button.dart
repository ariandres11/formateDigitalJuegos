import 'package:app/game_Manager.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final int carbon;
  final int vagones;
  final List slots;
  GameManager _gameManager = GameManager();

  Button({
    super.key,
    required this.text,
    required this.carbon,
    required this.vagones,
    required this.slots,
  });

  onPressed(){
    _gameManager.vagones = vagones;
    _gameManager.carbon = carbon;
    _gameManager.slots = slots;
    //falta agregar que cambie a la pantalla del nivel
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.blue,
      child: Text(text),
    );
  }
}
