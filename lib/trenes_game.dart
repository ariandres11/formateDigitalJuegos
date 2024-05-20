import 'dart:async';
import 'package:app/components/bolsa.dart';
import 'package:app/components/carbon.dart';
import 'package:app/components/tolva.dart';
import 'package:app/components/vagon.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';

class TrenesGame extends FlameGame{
  final int cantidadCarbon;

  TrenesGame(this.cantidadCarbon);

  final cantidadVagones = 2;
  final  volverOverlay = 'Volver';
  final numberOverlay = 'NumberSelector';
  final perdisteOverlay = 'PantallaPerdiste';
  final comenzarOverlay = 'BotonComenzar';
  final ganasteOverlay = 'PantallaGanaste';
  int cantTolva1 = 0;
  int cantTolva2 = 1;

  @override
  Future<void> onLoad() async{
    final screenWidth = size.x;
    final screenHigth = size.y;

    for(int i = 0; i < cantidadCarbon; i++) {
      add(Carbon(carbonPosition: Vector2((screenWidth/2) + 10, 60 + i * 10.0)));
    }
    addAll([
      //Tolvas
      Tolva(tolvaPosition: Vector2((screenWidth/2) - 185, (screenHigth / 2) - 120)),
      Tolva(tolvaPosition: Vector2((screenWidth/2) + 95,(screenHigth / 2) - 120)),
      //Bolsa
      Bolsa( bolsaPosition: Vector2((screenWidth/2) - 20, 40)),
      TextComponent(text: '$cantidadCarbon',
          position: Vector2((screenWidth/2) + 3, 63),
          textRenderer: TextPaint(
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25))),
      //Vagones
      Vagon(cantidadSlots:3, vagonPosition: Vector2((screenWidth/2) - 175, screenHigth - 200)),
      Vagon(cantidadSlots: 2, vagonPosition: Vector2((screenWidth/2) + 105 ,screenHigth - 200)),

    ]);
    /*
    bool tolvapar = true;
    for(int i = 0; i < cantidadCarbon; i++) {
      tolvapar = !tolvapar;
      if (tolvapar) {
        add(Carbon(carbonPosition: Vector2((screenWidth/2) - 130, 240 + i * 10.0)));
      } else {
        add(Carbon(carbonPosition: Vector2((screenWidth/2) + 150, 240 + i * 10.0)));
      }
    }
    */
    overlays.add(volverOverlay);
    overlays.add(numberOverlay);
    overlays.add(comenzarOverlay);
  }

  void comenzar(){
    overlays.remove(comenzarOverlay);
    overlays.remove(numberOverlay);
    //obtener valor de los number_selector y pasarselos a cantTolvas
    for(int i = 0; i <= cantidadVagones; i++){
      if(cantTolva1 >= 3){
        cantTolva1 -= 3;
      }else{
        overlays.add(perdisteOverlay);
        pauseEngine();
      }
      if(cantTolva2 >= 2){
        cantTolva2 -= 2;
      }else{
        overlays.add(perdisteOverlay);
        pauseEngine();
      }
      //animacion del movimiento de los vagones
    }
      if(cantTolva1 == 0 && cantTolva2 == 0){
        overlays.add(ganasteOverlay);
        pauseEngine();
      }
  }
  void reiniciar(){
    overlays.remove(perdisteOverlay);
    overlays.add(numberOverlay);
    overlays.add(comenzarOverlay);
    cantTolva1 = 3;
    cantTolva2 = 2;
    //reiniciar animación vagones
  }
}
