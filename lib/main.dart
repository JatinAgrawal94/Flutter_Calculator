import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
      theme:ThemeData(
        primarySwatch: Colors.blue
      ),
      home:MyHomePage(title:'Calculator '),
    );

  }
}


class MyHomePage extends StatefulWidget {

  MyHomePage({Key key,this.title}):super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

    String output="0";

    String _output="0";
    double num1=0.0;
    double num2=0.0;
    String operand="";
    buttonPressed(String buttonText){
      if(buttonText=="CLEAR"){
        String _output="0";
        double num1=0.0;
        double num2=0.0;
        String operand="";
      }
      else if(buttonText == '+' || buttonText == '-' || buttonText == 'x' || buttonText == '/'){
        num1=double.parse(output);
        operand=buttonText;
        _output="0";
      }
      else if(buttonText=='.'){
          if(_output.contains('.')){
            print("Already contains a decimal");
            return;
          }
          _output=_output+buttonText;
      }
      else if(buttonText=='='){
        num2=double.parse(output);

      }
    }


  // button function
    Widget buidButton( String buttonText){
        return Expanded(
          child: OutlineButton(
            padding:EdgeInsets.all(24.0),
            child: Text(buttonText,style:TextStyle(fontSize:20.0,fontWeight:FontWeight.bold)),
            onPressed: (){},
          ),
        );
    }
  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title)
        ),
        body: new Container(

          child: Column(
            children: <Widget>[
              Container(
                alignment:Alignment.centerRight,
                padding:EdgeInsets.symmetric(vertical: 24.0,horizontal:12.0),
                  child: Text(output,style: TextStyle(fontSize: 48.0,fontWeight:FontWeight.bold))),
              Expanded(child: Divider()),
              Column(children: <Widget>[

                Row(children: <Widget>[
                  buidButton('7'),
                  buidButton('8'),
                  buidButton('9'),
                  buidButton('/')
                ],),
                Row(children: <Widget>[
                  buidButton('4'),
                  buidButton('5'),
                  buidButton('6'),
                  buidButton('X')
                ],),
                Row(children: <Widget>[
                  buidButton('1'),
                  buidButton('2'),
                  buidButton('3'),
                  buidButton('-')
                ],),
                Row(children: <Widget>[
                  buidButton('.'),
                  buidButton('0'),
                  buidButton('00'),
                  buidButton('+')
                ],),
                Row(children: <Widget>[
                  buidButton("CLEAR"),
                  buidButton('='),
                ],)
              ],)
            ],
          ),
        )
      );
    }

}
