import 'package:flutter/material.dart';
import 'package:flutter_in_action/chapter2/CounterWidget.dart';
import 'package:flutter_in_action/chapter2/RandomWordsWidget.dart';
import 'package:flutter_in_action/chapter2/TipRoute.dart';

import 'chapter2/CupertinoTestRoute.dart';
import 'chapter2/EchoRouter.dart';
import 'chapter2/NewRouter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "MyHomePage",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
//        "new_page":(context) => NewRouter(),
//        "new_page":(context) => EchoRouter(),
        "MyHomePage":(context) => MyHomePage(title: "Flutter demo home page",),
        "tip2": (context){
          return TipRoute(text: ModalRoute.of(context).settings.arguments);
        },
//        "stateRouter": (context) => CounterWidget()
        "stateRouter": (context) => Text("xxxxx"),
        "cupertinoBtn": (context)=> CupertinoTestRoute()
      },
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(builder: (context){
          String routeName = settings.name;
        });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context){return NewRouter();}));
//                Navigator.pushNamed(context, "new_page",arguments: "hello");
//                Navigator.pushNamed(context, "tip2",arguments: "hello");
                Navigator.pushNamed(context, "cupertinoBtn");

              },
            ),
            RandomWordsWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
