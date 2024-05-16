import 'package:flutter/material.dart';

class NumberSelector extends StatefulWidget {
  final int upperLimit;

  NumberSelector({required this.upperLimit});

  @override
  _NumberSelectorState createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int _currentNumber = 0;
  final ScrollController _scrollController = ScrollController();

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
    return SingleChildScrollView(
      //Descomentar
      //controller: _scrollController,
      child: Container(
        color: Colors.white,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                50,
                (index) => ListTile(
                  title: Text('${index + 1}'),
                ))),
      ),
    );
  }
}
