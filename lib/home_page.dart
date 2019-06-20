import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {



  @override
  State createState() => new CalculatorState();
}

class CalculatorState extends State<Calculator> {

var num1=0,num2=0,sum=0;
final TextEditingController t1 = new TextEditingController(text: "0");
final TextEditingController t2 = new TextEditingController(text: "0");


void doAdd(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 + num2;
  });
}

void doSub(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 - num2;
  });
}

void doMul(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 * num2;
  });
}

void doDiv(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 ~/ num2;
  });
}

void doClear(){
  setState(() {

   t1.text = "0";
   t2.text = "0"; 
  });
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(labelText: "Enter Number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(labelText: "Enter Number 2"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    color: Colors.greenAccent,
                    child: new Text("+"),
                    onPressed: () {
                      doAdd();
                    },
                  ),
                  new MaterialButton(
                    color: Colors.greenAccent,
                    child: new Text("-"),
                    onPressed: () {
                      doSub();
                    },
                  ),
                 
                ],
              ),
              ),
              
             new Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                    new MaterialButton(
                      color: Colors.greenAccent,
                      child: new Text("*"),
                      onPressed: () {
                        doMul();
                      },
                    ),
                    new MaterialButton(
                      color: Colors.greenAccent,
                      child: new Text("/"),
                      onPressed: () {
                        doDiv();
                      },
                    ),
                   
                  ],
                ),
              ),
            
            Padding(
              padding: const EdgeInsets.only(top:32.0),
              child: new Text(
                "Output: $sum",
                style: new TextStyle(
                  color: Colors.green,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

             new Padding(
                padding: const EdgeInsets.only(top:20.0),),
               new Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new MaterialButton(
                      color: Colors.greenAccent,
                      child: new Text("Clear"),
                      onPressed: () {
                        doClear();
                      },
                    ),
                  ],
             ),
          ],
        ),
      ),
    );
  }
}
