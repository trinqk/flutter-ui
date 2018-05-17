// Imports
import 'package:flutter/material.dart';

// It can look complicated at first but it's quite simple

// This is how it is done on the Flutter Documentations
void main() => runApp(new FlutterUIDemo());

// This is the app overview. It returns the class that it is supposed to run.
class FlutterUIDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FlutterUIDemoTest',
      home: new DemoPage(),
    );
  }
}

// This is the actual widget that shows up.
// It is something like a View Controller in Swift
class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var assetsImage = new AssetImage('assets/calvinhobbes.jpg');
    var image = new Image(image: assetsImage, height: 300.0, width: 200.0);

    return new Scaffold(
      // APP BAR
      appBar: new AppBar(title: new Text('Flutter UI Demo'), backgroundColor: Colors.deepOrangeAccent),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              image,
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                      'Hello World',
                      style: new TextStyle(fontSize: 40.0),
                  ),
                  new Icon(Icons.android, color: Colors.green)
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: new RaisedButton(
                  child: new Text('Click Me!'),
                    color: Colors.indigo,
                    textColor: Colors.white,
                    onPressed: () {
                    // Something here
                    }),
              )
            ],
          ),
        ),
      )
    );
  }
}
