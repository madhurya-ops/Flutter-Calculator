import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App",
     // theme: new ThemeData(primarySwatch: Colors.orange, ),
      theme: new ThemeData.dark(),
      home: new HomePage()
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1 = 0; double num2 = 0; double sum = 0;

  final TextEditingController  t1= new TextEditingController(text: "0");
  final TextEditingController t2= new TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    sum = num1 + num2;
    });
  }

  void doSubtraction(){
    setState(() {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    sum = num1 - num2;      
    });
  }

  void doMultiplication(){
    setState(() {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    sum = num1 * num2;
    });
  }

  void doDivision(){
    setState(() {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    sum = num1 / num2;
    });
  }

  void clear(){
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator", 
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),
        backgroundColor: Color.fromARGB(255, 236, 145, 9),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                "Output: $sum",
                style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
                
              ),
              TextField(
                  controller: t1,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter first number"),
            ),
               TextField(
                controller: t2,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                decoration: InputDecoration(hintText: "Enter second number"),
                keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0)
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                   MaterialButton(
                    child: new Text("+", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    color: Color.fromARGB(255, 236, 145, 9),
                    onPressed: doAddition
                  ),
                   MaterialButton(
                    child: new Text("-", style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold)),
                    color: Color.fromARGB(255, 236, 145, 9),
                    onPressed: doSubtraction
                  )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0)
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  MaterialButton(
                    child: new Text("*", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    color: Color.fromARGB(255, 236, 145, 9),
                    onPressed: doMultiplication
                  ),
                  MaterialButton(
                    child: new Text("/", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    color: Color.fromARGB(255, 236, 145, 9),
                    onPressed: doDivision
                  ),
            ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0)
              ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                   MaterialButton(
                    child: new Text("Clear", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    color: Color.fromARGB(255, 236, 145, 9),
                    onPressed: clear
                  )
            ],
            ),
          ],
        ),
      )
    );
  }
}