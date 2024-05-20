import 'package:flutter/material.dart';

class NumberSelector extends StatefulWidget {
  const NumberSelector({required this.maximoNum, Key? key}) : super(key: key);

  final int maximoNum;

  @override
  _NumberSelectorState createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int _currentValue = 0;

  int get currentValue => _currentValue;

  //Para ver current value desde otra clase

  /*final key = GlobalKey<_NumberSelectorState>();
NumberSelector(maximoNum: 10, key: key);

int value = key.currentState!.currentValue;
Considerar el uso del un callback*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          color: Colors.white,
          height: 80,
          width: 50,
          //"Rueda giratoria de elementos desplazables"
          child: ListWheelScrollView(
            onSelectedItemChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
            itemExtent: 40,
            //Rel entre diametro de la rueda y altura elementos
            diameterRatio: 1.5,
            children: List<Widget>.generate(widget.maximoNum, (index) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  '$index',
                  style: TextStyle(
                    fontSize: 20,
                    color: index == _currentValue ? Colors.deepOrange: Colors.black,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
