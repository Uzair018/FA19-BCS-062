import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),

      home: const MyHomePage(title: 'FA19-BCS-062'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counterp= 0;
  double _countern=50;
  double result=0;


  void _incrementCounter() {
    setState(() {
      _counterp++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _countern--;
    });
  }
  void _sum() {
    setState(() {
      result = _counterp + _countern;
    });
  }
  void _sub() {
    setState(() {
      result = _counterp - _countern;
    });
  }
  void _multiply() {
    setState(() {
      result = _counterp * _countern;
    });
  }
  void _div() {
    setState(() {
      result = _counterp / _countern;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true ,
        title: Text(widget.title),backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("        ",style: TextStyle(fontSize: 40,),
              ),
              Text("         ",style: TextStyle(fontSize: 40, ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("          ",style: TextStyle(fontSize: 40,),
              ),
              Text("         ",style: TextStyle(fontSize: 40, ),
              ),
            ],
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("  $_counterp",style: TextStyle(fontSize: 40,),
              ),
              Text("$_countern  ",style: TextStyle(fontSize: 40, ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Result",style: TextStyle(fontSize: 40,),
              ),
              Text(
                '$result',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ],

      ),


      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 5,
            top: 100,
            child: FloatingActionButton(
              tooltip: 'Increment',
              onPressed: _incrementCounter,
              child: const Icon(
                Icons.add,
                size: 30,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 100,
            child: FloatingActionButton(
              tooltip: 'Decrement',
              onPressed: _decrementCounter,
              child: const Text('-',
                style: TextStyle(fontSize: 40,),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned(
            left: 150,
            bottom: 40,
            child: FloatingActionButton(
              tooltip: 'Multiply',
              onPressed: _multiply,
              child: const Text('*',
                style: TextStyle(fontSize: 40,),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned(
            left: 260,
            bottom: 40,
            child: FloatingActionButton(
              tooltip: 'Divide',
              onPressed: _div,
              child: const Text('/',
                style: TextStyle(fontSize: 40,),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned(
            right: 260,
            bottom: 40,
            child: FloatingActionButton(
              tooltip: 'Subtract',
              onPressed: _sub,
              child: const Text('-',
                style: TextStyle(fontSize: 40,),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned(
            right: 150,
            bottom: 40,
            child: FloatingActionButton(
              tooltip: 'Addition',
              onPressed: _sum,
              child: const Text('+',
                style: TextStyle(fontSize: 40,),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

