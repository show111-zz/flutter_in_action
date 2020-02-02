import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///父widget管理子widget的状态
class ParentWidgetB extends StatefulWidget{

  @override
  _ParentWidgetState createState() => new _ParentWidgetState();

}

class _ParentWidgetState extends State<ParentWidgetB> {
  bool _active = false;

  void _handleTaboxChanged(bool newValue){
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapboxB(
        active: _active,
        onChanged: _handleTaboxChanged,
      ),
    );
  }

}

class TapboxB extends StatelessWidget{

  TapboxB({Key key, this.active: false, @required this.onChanged}): super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap(){
     onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(active ? 'Activie' : 'Inactive',style: new TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color:  active ? Colors.lightGreen[700]: Colors.grey[600],
        ),
      ),
    );

  }

}
