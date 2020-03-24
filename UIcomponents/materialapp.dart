import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar:AppBar( title: Text('This is a Screen')),
        body: 
          Column(children: <Widget>[
            Text('Question'),
            RaisedButton(child: Text('Answer1')),
            RaisedButton(child: Text('Answer2')),
            RaisedButton(child: Text('Answer3'),onPressed: null,),
            ],
          ),
        ),
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    );
  }
}
