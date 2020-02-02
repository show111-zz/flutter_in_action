import 'package:flutter/material.dart';

void main() => runApp(TipRoute());

class TipRoute extends StatelessWidget{
  final String text;

  TipRoute({Key key, @required this.text,}): super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tips"),
        ),
        body: Padding(padding: EdgeInsets.all(18),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(text),
                RaisedButton(onPressed: () => Navigator.pop(context,"I'm the back data!"),
                   child: Text("Back"),
                )
              ],
            ),
          ),
        )
      );
  }

}
