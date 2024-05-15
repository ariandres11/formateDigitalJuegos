import 'package:flutter/material.dart';

class NumberSelector extends StatefulWidget {
  final int upperLimit;

  NumberSelector({required this.upperLimit});

  @override
  _NumberSelectorState createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int _currentNumber = 0;

  void _increment() {
    setState(() {
      if (_currentNumber < widget.upperLimit) {
        _currentNumber++;
      }
    });
  }

  void _decrement() {
    setState(() {
      if (_currentNumber > 0) {
        _currentNumber--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_upward, color: Colors.red, size: 20,),
            onPressed: _increment,
          ),
          Text(
            '$_currentNumber',
            style: TextStyle(
              color: Colors.black),
          ),
          IconButton(
            icon: Icon(Icons.arrow_downward, color: Colors.red, size: 20),
            onPressed: _decrement,
          ),
        ],
      ),
    );
  }
}
