// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //veriable
  int _counter = 0;

  //method
  void _increamentCounter() {
    setState(() {});
    _counter++;
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Butona birden fazla kez tıkladın'),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: _increamentCounter,
              child: Text('Butona Tıkla'),
            )
          ],
        ),
      ),
    );
  }
}
