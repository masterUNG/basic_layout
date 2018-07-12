import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var titleString = "Basic Layout";
  var detailString = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";
  final douH1 = 20.0;

  @override
  Widget build(BuildContext context) {

    Widget widget = new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(children: <Widget>[

        new Expanded(
            child: new Text(
              titleString,
              style: new TextStyle(
                color: Colors.red,
                fontSize: douH1,
                fontWeight: FontWeight.bold,
            ),
            ),
        ),

        new Expanded(
            child: new Text(
              titleString,
              style: new TextStyle(
                  color: Colors.blue,
                  fontSize: douH1,
                  fontWeight: FontWeight.bold
              ),
            ),
        ),

        new Expanded(
            child: new Text(
              titleString,
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: douH1,
                  fontWeight: FontWeight.bold
              ),
            ),
        )

      ],), color: Colors.yellow, margin: EdgeInsets.all(15.0),

    );

    Widget widget2 = new Container(
      margin: EdgeInsets.all(15.0),child: new Text(detailString),
    );

    Widget widget3 = new Container(
      padding: EdgeInsets.all(15.0),
      child: new Row(
        children: <Widget>[
          new Image.asset('images/logo_ung.png', width: 200.0,fit: BoxFit.cover,),
          new Container(
            child: new Expanded(child: new Text(detailString)),
          )
        ],
      ),
    );

    return new MaterialApp(
      title: titleString,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titleString, style: new TextStyle(),),
        ),
        body: new ListView(children: <Widget>[
          widget,
          widget2,
          widget3
        ],),
      ),
    );
  }
}
