import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar:PreferredSize(preferredSize: Size.fromHeight(70.0),
            child:AppBar(
              flexibleSpace:new Container(
                padding: EdgeInsets.only(top:20.0),
                child:TabBar(
                  tabs: <Widget>[
                    Tab(text: 'Page1', icon: Icon(Icons.drag_handle)),
                    Tab(
                      text: 'Page2',
                      icon: Icon(Icons.view_compact),
                    ),
                    Tab(text: 'he',icon:Icon(Icons.view_compact))
                  ],
                )
              ,)
            ),),

            body: TabBarView(
              children: <Widget>[
                PageOne(),
                PageTwo(),
                PageOne()
              ],
            )));
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Container(
          padding: EdgeInsets.only(top:20.0),
          margin: EdgeInsets.only(top:150),
          color:Colors.red,
          height:MediaQuery.of(context).size.height*0.4,
          width:MediaQuery.of(context).size.width,
          child: TextField(
            textAlign: TextAlign.right,

            style: TextStyle(
              fontSize: 55,
            ),
            decoration: InputDecoration(
              border:OutlineInputBorder(
                borderSide:BorderSide(
                  color: Colors.red,
                )
              ),

            ),
          ),
        )
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('This is page two')));
  }
}

