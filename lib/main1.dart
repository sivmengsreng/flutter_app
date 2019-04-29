import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


void main () => runApp(MyApp1());


class MyApp1 extends StatelessWidget {
  final appTitle= "Drawer demo";


  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title : appTitle,
      home : MyHomePage (title :appTitle),
      //color : Colors.amber,
    );
  }
}

class MyHomePage extends StatelessWidget{
    final String  title;

    MyHomePage({Key key,this.title}) : super(key:key);

    @override
  Widget build (BuildContext context){

      return Scaffold(

        appBar: AppBar(title :Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(title)),
        )),
        body : Center(child: Text('Mypage',
        style: TextStyle(
          fontSize: 30.0
        ),
        )),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('DrawerHeader',
                style: TextStyle(
                  fontSize: 30.0),

                ),

                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),

              ),
          ListTile(
          title: Text ('Item1',
          style: TextStyle(
            fontSize: 20.0),
          ),
          onTap: (){
            Navigator.pop(context);
          },
          ),

      ListTile(
      title: Text ('Item2',
      style: TextStyle(
        fontSize: 20.0
      ),
      ),
      onTap: (){
      Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      ) ;
    }
}