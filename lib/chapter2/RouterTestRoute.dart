import 'package:flutter/material.dart';
import 'package:flutter_in_action/chapter2/TipRoute.dart';

class RouterTestRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(onPressed: ()async{
        var result = await Navigator.push(context, MaterialPageRoute(
          builder: (context){
            return TipRoute(text: "I'm Tip Router XXXX");
          }
        ));
        print("router back data is : $result");
      },
        child: Text("open tip router page"),
      ),
    );
  }

}
