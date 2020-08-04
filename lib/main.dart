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
    return Column(
      children: <Widget>[
      Align(
            alignment: Alignment.topLeft,    //alignment for the container
            child:Container(
  //          padding: EdgeInsets.only(top:20.0),
  //          margin: EdgeInsets.only(top:150),
  //            color:Colors.red,
            height:MediaQuery.of(context).size.height*0.35,
            width:MediaQuery.of(context).size.width,
              child:Align(                  //alignment for the textfield in container
                alignment: Alignment.bottomLeft,
                child: TextField(
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 55,
                      backgroundColor:Colors.black,
                      ),
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderSide:BorderSide(
                        )
                      ),
                  ),
          )
              ),

          )
      ),
        Container(
          child:GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.teal[100],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Heed not the rabble'),
                color: Colors.teal[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Sound of screams but the'),
                color: Colors.teal[300],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: Colors.teal[400],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: Colors.teal[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: Colors.teal[600],
              ),
            ],
          )
        )
      ]
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('This is page two')));
  }
}

