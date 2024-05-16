


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';

class ScrollControllerTest extends StatelessWidget{
  ScrollControllerTest({Key? key}): super(key:key);

  //Con esto asocio un widget scrollable con el scrollcontroller
  final ScrollController _scrollController = ScrollController();


  @override
  Widget build(BuildContext context){
    //Listener para saber la pos actual
    _scrollController.addListener(() {
      print(_scrollController.position.pixels);
    });
      return Scaffold(
        body: ListView.builder(
          itemCount: 20,
            itemBuilder: (BuildContext context, int index){
              return Container(
                alignment: Alignment.center,
                color: Colors.amber,
                height: 150,
                child: Text(
                  '$index + 1'
                ),
              );
            },
        ),
      );
  }
}