// import 'dart:html';

import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;
  final actiontext;


  CustomDialog(this.title, this.content, this.callback,
  [this.actiontext = "Reset"]);
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: new Text(title),
      content: new Text(content),
      actions: <Widget>[
        // ignore: deprecated_member_use
        new FlatButton(
          onPressed: callback, 
          color: Colors.white,
          child: new Text(actiontext),
        )
      ],
    );
  }
}