import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String btnText;
  final VoidCallback clickHandler;
  Answer(this.btnText, this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        child: Text(btnText),
        onPressed: clickHandler,
      ),
    );
  }
}
