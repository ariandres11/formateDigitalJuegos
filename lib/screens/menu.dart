import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/fondo.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text('Trenes', style: TextStyle(fontSize: 52),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  child: const Text('juego'),
                  onPressed: () { Navigator.pushNamed(context, '/menu');},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  child: const Text('Salir'),
                  onPressed:() { Navigator.pushNamed(context, '/menu');},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
