import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Some title',
      home: Scaffold(
          body: Center(
        child: Counter(
          max: 10,
        ),
      ))));
}

class Counter extends StatefulWidget {
  final int max;

  Counter({ this.max });

  @override
  CounterState createState() => CounterState(max: this.max);
}

class CounterState extends State<Counter> {
  int _count = 0;
  final int max;

  CounterState({ this.max });

  void _increment() {
    setState(() {
      if (_count < max) {
        _count++;
      }
    });
  }

  void _initialize() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(onPressed: _increment, child: Text('Increment')),
        RaisedButton(onPressed: _initialize, child: Text('Initialize')),
        Text('Count: $_count', style: TextStyle(
          color: this._count == this.max ? Colors.red : null,
        )),
        Visibility(
          child: Text('Baraka me tesbih a5ay'),
          visible: this._count == this.max,
        )
      ],
    );
  }
}
