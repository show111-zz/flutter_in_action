import 'package:flutter/material.dart';

/// state 生命周期
class CounterWidget extends StatefulWidget{
  const CounterWidget({Key key, this.initValue:0});

  final int initValue;

  @override
  _CounterWidgetState createState() => new _CounterWidgetState();

}

class _CounterWidgetState extends State<CounterWidget>{

  int _counter;

  @override
  void initState() {
    // 初始化状态
    super.initState();
    _counter = widget.initValue;
    print("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
       body: Center(
         child: FlatButton(
             onPressed:()=> setState(()=>++_counter),
             child: Text('$_counter')
         ),
       ),
    );
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }



}
