import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(RunningApp());
}

class RunningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      theme: ThemeData(
          fontFamily: 'Times New Roman',
          textTheme: Theme
              .of(context)
              .textTheme
              .apply(bodyColor: Colors.blue, displayColor: Colors.blue)),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Understanding P & T"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hayyy"),
              Theme.of(context).platform == TargetPlatform.iOS
                  ? CupertinoSwitch(
                      value: true,
                      onChanged: (bool toogled) {},
                    )
                  : Switch(
                      value: true,
                      onChanged: (bool toogled) {},
                    ),
                    Text("Understanding about ThemeData"),
                    Padding(padding: EdgeInsets.all(10.0),),
                    Theme.of(context).platform == TargetPlatform.iOS?
                    CupertinoButton(
                      onPressed: (){},
                      color: Colors.blue,
                      child: new Text("Submit IOS"),
                    ) : RaisedButton(
                      onPressed: (){},
                      color: Colors.blue,
                      child: new Text("Submit Android", style: TextStyle(
                        color: Colors.white
                      ),),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
