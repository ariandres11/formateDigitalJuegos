import 'package:flutter/material.dart';

class NumberSelector extends StatefulWidget {

  const NumberSelector({Key? key}) : super(key: key);

  @override
  _NumberSelectorState createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          height: 50,
          width: 50,
          //"Rueda giratoria de elementos desplazables"
          child: ListWheelScrollView(
            onSelectedItemChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
            itemExtent: 20,
            //Rel entre diametro de la rueda y altura elementos
            diameterRatio: 1.5,
            children: List<Widget>.generate(10, (index) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  '$index',
                  style: TextStyle(
                    fontSize: 20,
                    color: index == _currentValue ? Colors.deepOrange : Colors.black,
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
