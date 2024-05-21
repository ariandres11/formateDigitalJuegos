import 'package:flutter/material.dart';

class NumberSelector extends StatefulWidget {
  final ValueChanged<int> onValueChanged;
  const NumberSelector({required this.maximoNum, Key? key, required this.onValueChanged}) : super(key: key);

  //NumberSelector({required this.maximoNum});
  final int maximoNum;

  @override
  _NumberSelectorState createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  //Valor actual del ns
  int _currentValue = 0;

  int get currentValue => _currentValue;


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
                widget.onValueChanged(value);
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
