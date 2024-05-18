import 'package:flutter/material.dart';

class NumberSelector extends StatefulWidget {
  final double height;
  final double width;

  const NumberSelector({Key? key, required this.height, required this.width}) : super(key: key);

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
          constraints: BoxConstraints(minHeight: 30, maxHeight: 60, minWidth: 50, maxWidth: 80),
          height: widget.height,
          width: widget.width,
          //"Rueda giratoria de elementos desplazables"
          child: ListWheelScrollView(
            onSelectedItemChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
            itemExtent: 60,
            //Rel entre diametro de la rueda y altura elementos
            diameterRatio: 1.5,
            children: List<Widget>.generate(11, (index) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  '$index',
                  style: TextStyle(
                    fontSize: 20,
                    color: index == _currentValue ? Colors.orange : Colors.black,
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
