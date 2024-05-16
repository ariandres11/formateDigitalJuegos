
import 'package:app/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => menu();
}

class menu extends State<HomePage> {

  List niveles = [
    ["1", 30, 12, [2,3] ]
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        itemCount: niveles.length,
          itemBuilder: (context,index){
            return Button(
                text: "nivel " + niveles[index][0],
                carbon: niveles[index][1],
                vagones: niveles[index][2],
                slots: niveles[index][3]
            );
        }
      ),
    );
  }
}