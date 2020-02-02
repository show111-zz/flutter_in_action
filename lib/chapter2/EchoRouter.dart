import 'package:flutter/material.dart';

class EchoRouter extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      var args = ModalRoute.of(context).settings.arguments;
  }

}
