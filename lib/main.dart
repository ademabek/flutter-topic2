import 'package:flutter/material.dart';

void main() => runApp(CounterWidget());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterWidget(),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;
  @override
  void initState() {
    _count = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('counter'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[900],
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Tap "-" to decrement',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 236, 0, 83),
                        fontSize: 25),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.add_rounded),
                          color: Colors.amberAccent,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              _count++;










































































































                            });
                          },
                        ),
                        Text(
                          "$_count",
                          style: TextStyle(
                            fontSize: 50,
                            color:  Colors.blue,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove_rounded),
                          color: Colors.red,
                          iconSize: 50,
                          onPressed: () {
                            setState(() {
                              _count--;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Tap "+"to increment',
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 0, 83), fontSize: 25),
                  )
                ],
              )),
        ),
      ),
    );
  }
}