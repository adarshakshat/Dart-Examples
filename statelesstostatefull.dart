import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }


}
class MyAppState extends State<MyApp>{
  var questionindex=0;
  var question=['Do you like C',
    'Do you like Java',
    'Do you like Python'];
  var answeroption=['yes',
    'No',
    'Maybe'];
  void answer(){
    print('Button Pressed for $questionindex');
    setState(()=>
    {
    questionindex++;
    }
    );
    if(questionindex>3){
      questionindex=0;
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar:AppBar( title: Text('This is a Screen')),
        body: Column(children: <Widget>[
          Text(question[questionindex]),
          RaisedButton(child: Text(answeroption[0])),
          RaisedButton(child: Text(answeroption[1])),
          RaisedButton(child: Text(answeroption[2]),onPressed: answer,
          ),
          ],
        ),
        ),
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    );
  }
}
