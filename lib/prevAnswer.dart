import 'package:flutter/material.dart';

class PrevAnswer extends StatelessWidget {
  final VoidCallback clickHandler;
  PrevAnswer(this.clickHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.red,
        child: Text("return"),
        onPressed: clickHandler,
      ),
    );
  }
}
