import 'package:flutter/material.dart';


void main() => runApp(Padding(
  padding: const EdgeInsets.all(8.0),
  child:   MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        //define the default color
        brightness: Brightness.light ,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        //Define the Default font family
        fontFamily: 'Montserrat',


      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Container(
          child: _mywidget(context),
          color: Theme.of(context).accentColor
        ),
      ),
      ),
    );

  }
}

Widget _mywidget(BuildContext context){
          String _mystring = 'hello flutter';
          print(_mystring);
          return Text(
            _mystring,
            style : TextStyle(fontSize: 30.0)
          );



}